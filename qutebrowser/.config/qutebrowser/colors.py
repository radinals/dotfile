#!/usr/bin/env python3
color1 = "#101010"
color2 = "#000000"
color3 = "#d8d8d8"
color4 = "#383838"
color5 = "#b58900"
color6 = "#f8f8f8"
color7 = "#a1b56c"
color8 = "#b8b8b8"
color9 = "#268bd2"
color10 = "#ab4642"
color11 = "#007264"
color12 = "#6c71c4"
hintfg = "#000000"
hintbg = "#ff6a6a"
bgcolor = color1

c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = "lightness-hsl"
c.colors.webpage.darkmode.contrast = 0.0
c.colors.webpage.darkmode.policy.images = "never"
c.colors.webpage.darkmode.threshold.background = 100

# Background color for webpages if unset (or empty to use the theme's color.
# Type: QtColor
c.colors.webpage.bg = bgcolor

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
# Type: List of QtColor, or QtColor
c.colors.completion.fg = [ color9, color3, color12 ]

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = bgcolor

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = color2

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = color12

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = color2

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = color2

# Bottom border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.bottom = color2

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = color3

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = color4

# Top border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.top = color4

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = color4

# Foreground color of the matched text in the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.match.fg = color7

# Foreground color of the matched text in the completion.
# Type: QtColor
c.colors.completion.match.fg = color5

# Color of the scrollbar handle in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.fg = color3

# Color of the scrollbar in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.bg = color2

# Background color of the context menu. If set to null, the Qt default
# is used.
# Type: QssColor
c.colors.contextmenu.menu.bg = color2

# Foreground color of the context menu. If set to null, the Qt default
# is used.
# Type: QssColor
c.colors.contextmenu.menu.fg = color3

# Background color of the context menu's selected item. If set to null,
# the Qt default is used.
# Type: QssColor
c.colors.contextmenu.selected.bg = color4

# Foreground color of the context menu's selected item. If set to null,
# the Qt default is used.
# Type: QssColor
c.colors.contextmenu.selected.fg = color3

# Background color of disabled items in the context menu. If set to
# null, the Qt default is used.
# Type: QssColor
c.colors.contextmenu.disabled.bg = bgcolor
# Foreground color of disabled items in the context menu. If set to
# null, the Qt default is used.
# Type: QssColor
c.colors.contextmenu.disabled.fg = color8

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = color2

# Color gradient start for download text.
# Type: QtColor
c.colors.downloads.start.fg = bgcolor
# Color gradient start for download backgrounds.
# Type: QtColor
c.colors.downloads.start.bg = color9

# Color gradient end for download text.
# Type: QtColor
c.colors.downloads.stop.fg = bgcolor
# Color gradient stop for download backgrounds.
# Type: QtColor
c.colors.downloads.stop.bg = color11

# Foreground color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.fg = color10

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = hintfg

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = hintbg

# Font color for the matched part of hints.
# Type: QtColor
c.colors.hints.match.fg = color3

# Text color for the keyhint widget.
# Type: QssColor
c.colors.keyhint.fg = color3

# Highlight color for keys to complete the current keychain.
# Type: QssColor
c.colors.keyhint.suffix.fg = color3

# Background color of the keyhint widget.
# Type: QssColor
c.colors.keyhint.bg = color2

# Foreground color of an error message.
# Type: QssColor
c.colors.messages.error.fg = color2

# Background color of an error message.
# Type: QssColor
c.colors.messages.error.bg = color10

# Border color of an error message.
# Type: QssColor
c.colors.messages.error.border = color10

# Foreground color of a warning message.
# Type: QssColor
c.colors.messages.warning.fg = color2

# Background color of a warning message.
# Type: QssColor
c.colors.messages.warning.bg = color12

# Border color of a warning message.
# Type: QssColor
c.colors.messages.warning.border = color12

# Foreground color of an info message.
# Type: QssColor
c.colors.messages.info.fg = color3

# Background color of an info message.
# Type: QssColor
c.colors.messages.info.bg = color2

# Border color of an info message.
# Type: QssColor
c.colors.messages.info.border = color2

# Foreground color for prompts.
# Type: QssColor
c.colors.prompts.fg = color3

# Border used around UI elements in prompts.
# Type: String
c.colors.prompts.border = color2

# Background color for prompts.
# Type: QssColor
c.colors.prompts.bg = color2

# Background color for the selected item in filename prompts.
# Type: QssColor
c.colors.prompts.selected.bg = color4

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = color7

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = color2

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = color2

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = color9

# Foreground color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.fg = color2

# Background color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.bg = color11

# Foreground color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.fg = color2

# Background color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.bg = bgcolor

# Foreground color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.fg = color3

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = color2

# Foreground color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.fg = color3

# Background color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.bg = color2

# Foreground color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.fg = color2

# Background color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.bg = color12

# Foreground color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.fg = color2

# Background color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.bg = color9

# Background color of the progress bar.
# Type: QssColor
c.colors.statusbar.progress.bg = color9

# Default foreground color of the URL in the statusbar.
# Type: QssColor
c.colors.statusbar.url.fg = color3

# Foreground color of the URL in the statusbar on error.
# Type: QssColor
c.colors.statusbar.url.error.fg = color10

# Foreground color of the URL in the statusbar for hovered links.
# Type: QssColor
c.colors.statusbar.url.hover.fg = color3

# Foreground color of the URL in the statusbar on successful load
# (http).
# Type: QssColor
c.colors.statusbar.url.success.http.fg = color9

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = color9

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = color12

# Background color of the tab bar.
# Type: QssColor
c.colors.tabs.bar.bg = color2

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = color9

# Color gradient end for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.stop = color11

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = color10

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = color6

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = color2

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = color6

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = color2

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = color6

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = color4

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = color6

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = color4

# Foreground color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.fg = color6

# Background color of pinned unselected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.odd.bg = color7

# Foreground color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.fg = color6

# Background color of pinned unselected even tabs.
# Type: QtColor
c.colors.tabs.pinned.even.bg = color11

# Foreground color of pinned selected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.odd.fg = color6

# Background color of pinned selected odd tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.odd.bg = color4

# Foreground color of pinned selected even tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.even.fg = color6

# Background color of pinned selected even tabs.
# Type: QtColor
c.colors.tabs.pinned.selected.even.bg = color4
