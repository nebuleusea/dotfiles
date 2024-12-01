-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  -- pack
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.ps1" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.go" },
  -- { import = "astrocommunity.pack.sql" },
  -- { import = "astrocommunity.pack.docker" },
  -- { import = "astrocommunity.pack.markdown" },

  -- programming-language-support
  { import = "astrocommunity.programming-language-support.csv-vim" },

  -- split-and-window
  { import = "astrocommunity.split-and-window.colorful-winsep-nvim" },

  -- terminal-integration
  { import = "astrocommunity.terminal-integration.flatten-nvim" },

  -- color
  { import = "astrocommunity.color.vim-highlighter" },

  -- import/override with your plugins folder
}
