--[[--
  Use this file to specify **System** preferences.
  Review [examples](+/Applications/ZeroBraneStudio.app/Contents/ZeroBraneStudio/cfg/user-sample.lua) or check [online documentation](http://studio.zerobrane.com/documentation.html) for details.
--]]--
output.fontname = "IBM Plex Mono"
output.fontsize = 18
editor.fontname = "IBM Plex Mono"
editor.fontsize = 16
editor.tabwidth = 4

package {
    onEditorPreSave = function(self, editor)
        ide:GetMainFrame():ProcessEvent(
            wx.wxCommandEvent(
                wx.wxEVT_COMMAND_MENU_SELECTED,
                ID.REINDENT
            )
        )
    end,
}