#!/usr/bin/env python3
# Change the argument to True to still load settings configured via autoconfig.yml
from os import getenv
import qutebrowser.api.interceptor as qt
config.load_autoconfig(False)


def redirect(r: qt.Request):
    links = {
        "www.reddit.com": "www.teddit.net",
        "www.twitter.com": "www.nitter.net",
        "www.wikipedia.org": "www.wikiless.org",
        "en.wikipedia.org": "wikiless.org",
    }

    if r.request_url.host() in links.keys():
        r.request_url.setHost(links[r.request_url.host()])
        try:
            r.redirect(r.request_url)
        except:
            pass


qt.register(redirect)

# colorsceme
try:
    config.source("colors.py")
except:
    pass

# saved search engines
try:
    config.source("searchEngines.py")
except:
    pass

# close tabs.
config.bind(";c", "tab-close", mode="normal")

# open new tabs.
config.bind(";n", "open -t", mode="normal")

# unbind existing binding
config.unbind(";d", mode="normal")

# download selected (all)
config.bind(";da", "hint all download", mode="normal")

# download selected (images)
config.bind(";di", "hint images download", mode="normal")

# download selected (link)
config.bind(";dl", "hint links download", mode="normal")

# open videos in mpv
config.bind(
    "<Space>oV",
    "hint links spawn mpv --ytdl-format='bestvideot[height<=?720]+bestaudio/best' {hint-url}",
    mode="normal"
)

config.bind(
    "<Space>ov",
    "hint links spawn mpv --ytdl-format='bestvideot[height<=?480]+bestaudio/best' {hint-url}",
    mode="normal"
)

# set font size
font_size = 9

# default font family
c.fonts.default_family = "LiterationSans Nerd Font Book"

# default font size
c.fonts.default_size = f"{font_size}pt"

# hint font size
hint_font_size = f"{font_size + 1}"

# hint font
c.fonts.hints = f"bold {hint_font_size}pt default_family"

# remove completed downloads after n miliseconds
c.downloads.remove_finished = 5

# show path and/or filename in download prompt
c.downloads.location.suggestion = "both"

# show scroll bars
c.scrolling.bar = "never"
c.completion.scrollbar.width = 0

# confirm quit
c.confirm_quit = ["downloads"]

# hide tabs unless
c.tabs.show = "multiple"

c.window.hide_decoration = False

# Default zoom level.
c.zoom.default = "80%"

# Number of commands to save in the command history. 0: no history / -1:
c.completion.cmd_history_max_items = 50

# c.content.user_stylesheets = ["stylesheet.css"] # set stylesheet

# hide statusbar
c.statusbar.show = "in-mode"

c.url.default_page = "https:/duckduckgo.com/lite/"
c.url.start_pages = "https:/duckduckgo.com/lite/"

# set the default text editor
c.editor.command = ["st", "-e", "nvim", "{file}"]

c.aliases = {
    "q": "close",
    "qa": "quit",
    "w": "session-save",
    "tabnew": "open -t",
    "tabn": "tab-next",
    "tabp": "tab-prev",
    "tabc": "tab-close",
    "!": "spawn ",
}

c.content.private_browsing = True

# enables loading images in sites.
c.content.images = True

# Allow websites to get geolocations: true, false, ask
c.content.geolocation = False

# set javascript behaviors
c.content.javascript.enabled = False
c.content.javascript.alert = False
c.content.javascript.modal_dialog = False
c.content.javascript.prompt = False

# Store cookies.
c.content.cookies.store = False

# - all: Accept all cookies.
# - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
# - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
# - never: Don't accept cookies at all.
c.content.cookies.accept = "never"

# allow website to send notifications
c.content.notifications.enabled = False

# allow audio/video/desktop capture
c.content.desktop_capture = False
c.content.media.video_capture = False
c.content.media.audio_capture = False
c.content.media.audio_video_capture = False

# set the default user agent.
c.content.headers.user_agent = (
    'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36'
)

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')

try:
    whitelist = [
        "*://duckduckgo.com/*",
        '*://localhost:*',
        "*://wallhaven.cc/*",
        "*://gitlab.com/*",
        "*://github.com/*",
        "*://odysee.com/*",
    ]

    for link in whitelist:
        config.set("content.javascript.enabled", True, link)
        config.set("content.cookies.accept", "no-3rdparty", link)
except:
    pass
