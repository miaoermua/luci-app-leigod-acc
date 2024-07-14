local uci                         = require "luci.model.uci".cursor()
local translate = luci.i18n.translate

-- config
m                                 = Map("accelerator")
m.title                           = translate("Leigod Accelerator Config")
m.description                     = translate("Control Accelerator Config")

m:section(SimpleSection).template = "leigod/service"

return m
