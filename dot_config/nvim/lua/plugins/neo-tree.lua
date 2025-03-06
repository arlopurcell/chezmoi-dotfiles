return {
  "nvim-neo-tree/neo-tree.nvim",
  event = "VeryLazy",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  keys = {
    { "<leader>k",  "<cmd>Neotree<cr>", desc = "Nvim Tree" },
  },
}
--local function my_on_attach(bufnr)
--  local api = require "nvim-tree.api"
--
--  local function opts(desc)
--    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
--  end
--
--  -- default mappings
--  api.config.mappings.default_on_attach(bufnr)
--
--  -- custom mappings
--  vim.keymap.set('n', '<leader>d', ':NvimTreeOpen')
--end
--
--return {
--    'nvim-tree/nvim-tree.lua',
--    event = "VeryLazy",
--    dependencies = { 'nvim-tree/nvim-web-devicons' },
--    keys = {
--      { "<leader>k",  "<cmd>NvimTreeOpen<cr>", desc = "Nvim Tree" },
--    },
--    config = function()
--        require("nvim-tree").setup({
--            on_attach = my_on_attach,
--        })
--    end,
--}
