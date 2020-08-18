config.source('qutewal.py')
config.load_autoconfig()
config.set("colors.webpage.darkmode.enabled", True)

c.tabs.indicator.width = 0
c.tabs.padding = {'top': 2, 'bottom': 2, 'left': 2, 'right': 2}
c.tabs.favicons.show = 'never'
c.tabs.title.format = '{current_title}'

c.fonts.tabs.selected = '9pt Terminus'
c.fonts.tabs.unselected = '9pt Terminus'
c.fonts.hints = '9pt Terminus'
c.fonts.keyhint = '9pt Terminus'
c.fonts.prompts = '9pt Terminus'
c.fonts.downloads = '9pt Terminus'
c.fonts.statusbar = '9pt Terminus'
c.fonts.contextmenu = '9pt Terminus'
c.fonts.messages.info = '9pt Terminus'
c.fonts.debug_console = '9pt Terminus'
c.fonts.completion.entry = '9pt Terminus'
c.fonts.completion.category = '9pt Terminus'
