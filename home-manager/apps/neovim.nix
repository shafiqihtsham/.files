{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    extraConfig = ''
      set number relativenumber

      " Telescope keymap for <C-p>
      nnoremap <C-p> <cmd>Telescope find_files<CR>

      lua << EOF
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      lspconfig.tsserver.setup({
        capabilities = capabilities
      })

      local cmp = require('cmp')
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<Down>'] = cmp.mapping.select_next_item(),
          ['<Up>'] = cmp.mapping.select_prev_item(),
        }),
        sources = {
          { name = 'nvim_lsp' },
          { name = 'buffer' },
        },
      })
      EOF
    '';
    viAlias = true;
    vimAlias = true;
    plugins = [
      { plugin = pkgs.vimPlugins.telescope-nvim; }
      { plugin = pkgs.vimPlugins.nvim-treesitter; }
      { plugin = pkgs.vimPlugins.nvim-lspconfig; }
      { plugin = pkgs.vimPlugins.nvim-cmp; }
      { plugin = pkgs.vimPlugins.cmp-nvim-lsp; }
    ];
  };
}
