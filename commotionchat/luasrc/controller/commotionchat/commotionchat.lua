module("luci.controller.commotionchat.commotionchat", package.seeall)

function index()
  require("luci.i18n")
  local i18n = luci.i18n.translate
  entry({"commotion", "apps"}, alias("commotion", "apps", "apps"), i18n("Applications"), 10).index = true
  entry({"commotion", "apps", "chatapp"}, template("commotionchat/chatapp"), i18n("Chat"), 91)
end

