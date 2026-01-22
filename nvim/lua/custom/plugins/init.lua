-- Custom plugins and configuration ported from old init.vim
-- This file is loaded via { import = 'custom.plugins' } in init.lua

return {
  -- Monokai Pro theme (your old colorscheme)
  {
    'loctvl842/monokai-pro.nvim',
    priority = 1000,
    config = function()
      require('monokai-pro').setup {
        filter = 'pro', -- classic, octagon, pro, machine, ristretto, spectrum
      }
      -- Uncomment to use monokai instead of tokyonight
      -- vim.cmd.colorscheme 'monokai-pro'
    end,
  },

  -- Neo-tree (replaces NERDTree)
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'Toggle file [E]xplorer' },
      { '<leader>o', '<cmd>Neotree focus<cr>', desc = 'F[o]cus file explorer' },
    },
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- Show hidden files (like NERDTreeShowHidden)
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },

  -- Markdown preview (you had this)
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = 'cd app && yarn install',
  },

  -- Git integration (vim-fugitive replacement - actually kickstart has gitsigns)
  {
    'tpope/vim-fugitive',
    cmd = { 'Git', 'G', 'Gdiff', 'Gblame' },
  },

  -- Prisma support
  { 'prisma/vim-prisma', ft = 'prisma' },

  -- Protobuf support with buf
  { 'bufbuild/vim-buf', ft = 'proto' },

  -- CSS color preview (you had this)
  { 'norcalli/nvim-colorizer.lua', opts = {} },
}
