#!/usr/bin/env python3
import qutebrowser.api.interceptor as qt
from os import getenv

def redirect(r: qt.Request):
    links = {
        "www.reddit.com": "www.teddit.net",
        "www.twitter.com": "www.nitter.net",
        "www.wikipedia.com": "www.wikiless.org"
    }

    if r.request_url.host() in links.keys():
        r.request_url.setHost(links[r.request_url.host()])
        try:
            r.redirect(r.request_url)
        except:
            pass
qt.register(redirect)

# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# load external files
config.source("colors.py")
config.source("searchEngines.py")

# close tabs.
config.bind("<Space>wc", "tab-close", mode="normal")

# open hint in new tab
config.bind("<Space>wo", "hint all tab", mode="normal")

# open new tabs.
config.bind("<Space>wn", "open -t", mode="normal")

# copy hinted links to clipboard
config.bind("<Space>yl", "hint links yank", mode="normal")

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

font_size = 10
# default font size
c.fonts.default_size = str(font_size) + 'pt'  
# default font family
c.fonts.default_family = "Liberation Sans"
# default font size
hint_font_size = str(font_size + 1)
c.fonts.hints = f"bold {hint_font_size}pt default_family"

c.downloads.remove_finished = 5  # remove completed downloads
c.downloads.location.suggestion = "both"
c.scrolling.bar = "never"
c.tabs.show = "multiple"
c.window.hide_decoration = False
c.zoom.default = "80%"  # Default zoom level.

# Number of commands to save in the command history. 0: no history / -1:
c.completion.cmd_history_max_items = 50

# c.content.user_stylesheets = ["stylesheet.css"] # set stylesheet

c.url.default_page = "https:/duckduckgo.com/lite/"
c.url.start_pages = "https:/duckduckgo.com/lite/"

# set the default text editor
c.editor.command = ["st", "-e", "nvim", "{file}"]

# enables loading images in sites.
c.content.images = True

# Store cookies.
c.content.cookies.store = False

# Allow websites to get geolocations: true, false, ask
c.content.geolocation = False

# set javascript behaviors
c.content.javascript.enabled = False
c.content.javascript.modal_dialog = False
c.content.javascript.prompt = False

# - all: Accept all cookies.
# - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
# - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
# - never: Don't accept cookies at all.
c.content.cookies.accept = "never"

c.content.private_browsing = True

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
    javascript_whitelist = [ 
        "*://duckduckgo.com/*",
        '*://localhost:*',
        "*://wallhaven.cc/*",
        "*://gitlab.com/*",
        "*://github.com/*",
        "*://odysee.com/*",
    ]

    for whitelist_link in javascript_whitelist:
        config.set("content.javascript.enabled", True, whitelist_link)
        config.set("content.cookies.accept", "no-3rdparty", whitelist_link)
except:
    pass
