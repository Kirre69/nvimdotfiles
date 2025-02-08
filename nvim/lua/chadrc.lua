-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

--@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "chadtain",
  transparency = true,
	 hl_override = {
	 	Comment = { italic = true },
	 	["@comment"] = { italic = true },
 },
}

M.ui = {
   statusline = {
     theme = "default",
     separator_style = "default",
     order = { "mode", "f", "git", "%=", "abc", "lsp_msg", "lsp"},
     modules = {
       abc = function()
         return " | Line " .. vim.fn.line(".") .. ", " .."Col " .. vim.fn.col(".") .. " |"
       end,
       f = "%F"
     }
   },
 }

return M
