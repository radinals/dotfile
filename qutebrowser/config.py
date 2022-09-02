#!/usr/bin/env python3
from os import getenv

# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# load external files
config.source("colors.py")
config.source("searchEngines.py")

## Keybindings
# close tabs.
config.bind("<Space>wc", "tab-close", mode="normal")

# open videos in mpv
config.bind("<Space>O", "hint links spawn mpv {hint-url}")
config.bind("<Space>o", "hint links spawn mpv --ytdl-format='worst' {hint-url}")

# copy hinted links to clipboard
config.bind("<Space>yl", "hint links yank")

# open new tabs.
config.bind("<Space>tn", "open -t", mode="normal")

## UI
font_size = 6
c.fonts.default_size = str(font_size) + 'pt'  # default font size
c.fonts.default_family = "Liberation Sans"  # default font family
c.fonts.hints = f'bold { str(font_size + 1 ) + "pt" } default_family'  # default font size

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
c.editor.command = [getenv("TERMINAL"), "-e", getenv("EDITOR"), "{file}"]

# enables loading images in sites.
c.content.images = True

# Store cookies.
c.content.cookies.store = False

# Allow websites to request geolocations: true, false, ask
c.content.geolocation = False

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')

# set javascript behaviors
c.content.javascript.enabled = True
c.content.javascript.modal_dialog = True
c.content.javascript.prompt = True

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
