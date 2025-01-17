{ helpers, pkgs, ... }:
let
  thunk =
    body:
    helpers.mkRaw ''
      function()
        ${body}
      end
    '';
in
{
  extraPackages = with pkgs; [
    nixfmt-rfc-style
    R
    rPackages.languageserver
    rustc
    cargo
  ];

  extraPlugins = with pkgs.vimPlugins; [
    actions-preview-nvim
  ];

  extraConfigLua = ''
    		do
    			require("actions-preview").setup({
    				diff = {
    					ignore_whitespace = true,
    				},
    				highlight_command = {
    					require("actions-preview.highlight").diff_highlight()
    				},
    				backend = { "telescope" },
    			})
    		end
    	'';

  extraConfigLuaPre = ''
    do
      local diagnostic_signs = { Error = "", Warn = "", Hint = "", Info = "" }

      for type, icon in pairs(diagnostic_signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        update_in_insert = true,
        virtual_text = { spacing = 4, prefix = "●" },
        severity_sort = true,
      })
    end
  '';

  autoCmd = [
    {
      event = [
        "BufRead"
        "BufNewFile"
      ];
      pattern = [
        "*.txt"
        "*.md"
        "*.tex"
        "LICENSE"
      ];
      command = "setlocal spell";
    }
  ];

  plugins.lsp = {
    enable = true;
    inlayHints = true;

    keymaps = {
      silent = true;

      diagnostic = {
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
      };

      lspBuf = {
        K = "hover";
        gh = "hover";
        gr = "references";
        gd = "definition";
        gi = "implementation";
        gD = "type_definition";
      };

      extra = [
        {
          action = thunk "vim.cmd [[<cmd>LspStop<CR>]]";
          key = "<leader>lx";
          options = {
            desc = "LSP: Stop";
            silent = true;
          };
        }
        {
          action = thunk "vim.cmd [[<cmd>LspStart<CR>]]";
          key = "<leader>ls";
          options = {
            desc = "LSP: Start";
            silent = true;
          };
        }
        {
          action = thunk "vim.cmd [[<cmd>LspRestart<CR>]]";
          key = "<leader>lr";
          options = {
            desc = "LSP: Restart";
            silent = true;
          };
        }
        {
          action =
            helpers.mkRaw
              # lua
              ''
                require('telescope.builtin').lsp_definitions
              '';
          key = "<leader>gd";
          options = {
            desc = "LSP: Definitions";
            silent = true;
          };
        }
        {
          action =
            helpers.mkRaw
              # lua
              ''
                require('actions-preview').code_actions
              '';
          key = "<leader>ca";
          options = {
            desc = "LSP: Code Actions";
            silent = true;
          };
        }
      ];
    };

    servers = {
      angularls = {
        enable = true;
        package = pkgs.plusultra.angular-language-server;
      };
      astro.enable = true;
      clangd.enable = true;
      # cmake.enable = true;
      cssls.enable = true;
      dockerls.enable = true;
      docker_compose_language_service.enable = true;
      eslint.enable = true;
      emmet_ls.enable = true;
      gleam.enable = true;
      # gdscript.enable = true;
      gopls.enable = true;
      # graphql.enable = true;
      # helm-ls.enable = true;
      html.enable = true;
      jsonls.enable = true;
      ltex.enable = true;
      lua_ls.enable = true;
      # nginx-language-server.enable = true;
      nixd = {
        enable = true;

        settings = {
          nixpkgs = {
            expr = "import <nixpkgs> {}";
          };
          formatting = {
            command = [ "nixpkgs-fmt" ];
          };
          options = {
            nixos = {
              expr = ''
                let configs = (builtins.getFlake ("git+file://" + builtins.toString ./.)).nixosConfigurations; in (builtins.head (builtins.attrValues configs)).options
              '';
            };
            home_manager = {
              expr = ''
                let configs = (builtins.getFlake ("git+file://" + builtins.toString ./.)).homeConfigurations; in (builtins.head (builtins.attrValues configs)).options
              '';
            };
            darwin = {
              expr = ''
                let configs = (builtins.getFlake ("git+file://" + builtins.toString ./.)).darwinConfigurations; in (builtins.head (builtins.attrValues configs)).options
              '';
            };
          };
        };
      };
      nushell.enable = true;
      # perlpls.enable = true;
      # phpactor.enable = true;
      # prismals.enable = true;
      pyright.enable = true;
      r_language_server.enable = true;
      r_language_server.package = pkgs.rPackages.languageserver;
      ruff.enable = true;
      scheme_langserver.enable = true;
      sqls.enable = true;
      # statix.enable = true;
      # statix.cmd = ["statix" "check"];
      svelte.enable = true;
      tailwindcss.enable = true;
      taplo.enable = true;
      templ.enable = true;
      tinymist.enable = true;
      # terraformls.enable = true;
      ts_ls.enable = true;
      # unocss.enable = true;
      vuels = {
        enable = true;
        package = pkgs.nodePackages_latest.vls;
      };
      vtsls = {
        enable = true;
        package = pkgs.plusultra.vtsls;
      };
      yamlls.enable = true;
      # zls.enable = true;
    };
  };
}
