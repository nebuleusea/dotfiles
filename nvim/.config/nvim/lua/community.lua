-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- split-and-window
  { import = "astrocommunity.split-and-window.colorful-winsep-nvim" },

  -- import/override with your plugins folder
}
