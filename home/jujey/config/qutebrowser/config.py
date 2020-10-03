config.source('qutewal.py')
config.load_autoconfig()
config.set("colors.webpage.darkmode.enabled", True)

c.tabs.indicator.width = 0
c.tabs.padding = {'top': 10, 'bottom': 10, 'left': 10, 'right': 10}
c.tabs.favicons.show = 'never'
c.tabs.title.format = '{current_title}'

c.fonts.tabs.selected = '11pt Terminus'
c.fonts.tabs.unselected = '11pt Terminus'
c.fonts.hints = '11pt Terminus'
c.fonts.keyhint = '11pt Terminus'
c.fonts.prompts = '11pt Terminus'
c.fonts.downloads = '11pt Terminus'
c.fonts.statusbar = '11pt Terminus'
c.fonts.contextmenu = '11pt Terminus'
c.fonts.messages.info = '11pt Terminus'
c.fonts.debug_console = '11pt Terminus'
c.fonts.completion.entry = '11pt Terminus'
c.fonts.completion.category = '11pt Terminus'
