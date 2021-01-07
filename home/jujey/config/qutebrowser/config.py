config.source('qutewal.py')
config.load_autoconfig()
config.set("colors.webpage.darkmode.enabled", True)

c.tabs.indicator.width = 0
c.tabs.padding = {'top': 8, 'bottom': 8, 'left': 8, 'right': 8}
c.tabs.favicons.show = 'never'
c.tabs.title.format = '{current_title}'
c.tabs.title.alignment = 'center'

c.fonts.tabs.selected = '12pt Terminus'
c.fonts.tabs.unselected = '12pt Terminus'
c.fonts.hints = '12pt Terminus'
c.fonts.keyhint = '12pt Terminus'
c.fonts.prompts = '12pt Terminus'
c.fonts.downloads = '12pt Terminus'
c.fonts.statusbar = '12pt Terminus'
c.fonts.contextmenu = '12pt Terminus'
c.fonts.messages.info = '12pt Terminus'
c.fonts.debug_console = '12pt Terminus'
c.fonts.completion.entry = '12pt Terminus'
c.fonts.completion.category = '12pt Terminus'
