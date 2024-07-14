local uci                         = require "luci.model.uci".cursor()
local translate = luci.i18n.translate

-- config
m                                 = Map("accelerator")
m.title                           = translate("Leigod Notice")
m.description                     = translate("Leigod Accelerator Usage")

m:section(SimpleSection).template = "leigod/notice"

return m
