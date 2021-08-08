config.source('qutewal.py')
config.load_autoconfig()
config.set("colors.webpage.darkmode.enabled", False)

c.tabs.indicator.width = 0
c.tabs.padding = {'top': 8, 'bottom': 8, 'left': 8, 'right': 8}
c.tabs.favicons.show = 'never'
c.tabs.title.format = '{current_title}'
c.tabs.title.alignment = 'center'

c.fonts.tabs.selected = '10pt FuraCode NerdFont'
c.fonts.tabs.unselected = '10pt FuraCode NerdFont'
c.fonts.hints = '10pt FuraCode NerdFont'
c.fonts.keyhint = '10pt FuraCode NerdFont'
c.fonts.prompts = '10pt FuraCode NerdFont'
c.fonts.downloads = '10pt FuraCode NerdFont'
c.fonts.statusbar = '10pt FuraCode NerdFont'
c.fonts.contextmenu = '10pt FuraCode NerdFont'
c.fonts.messages.info = '10pt FuraCode NerdFont'
c.fonts.debug_console = '10pt FuraCode NerdFont'
c.fonts.completion.entry = '10pt FuraCode NerdFont'
c.fonts.completion.category = '10pt FuraCode NerdFont'
