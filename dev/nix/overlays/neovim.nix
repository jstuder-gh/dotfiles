
final: prev:
  let
    customRC = ''
      source ~/.config/nvim/init.vim

      if !empty($COC_NIL_PATH)
        execute 'set rtp^=' . $COC_NIL_PATH
      endif

      autocmd BufRead,BufNewFile *.nix setf nix

      let g:coc_node_path = '${prev.nodejs_20}/bin/node'
      let g:coc_config_home = '${cocConfigHome}'
      let g:coc_data_home = (empty($TMPDIR) ? '/tmp' : $TMPDIR) . '/coc-data'

      set tagfunc=CocTagFunc

      set updatetime=300
      " Color encoding.
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
      syntax on

      function! LspStatus()
        return coc#status()
      endfunction
      autocmd User CocStatusChange redrawstatus

      " Semantic highlighting.
      autocmd CursorHold * silent call CocActionAsync('highlight')

      inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
      inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
      inoremap <silent><expr> <c-@> coc#refresh()

      nmap <silent> [d <Plug>(coc-diagnostic-prev)
      nmap <silent> ]d <Plug>(coc-diagnostic-next)
      nmap <silent> <Space>jd <Plug>(coc-definition)
      nmap <silent> <Space>jt <Plug>(coc-type-definition)
      nmap <silent> <Space>ji <Plug>(coc-implementation)
      nmap <silent> <Space>jr <Plug>(coc-references)
      nmap <silent> <Space>jl <Plug>(coc-openlink)

      nmap <silent> <C-s> <Plug>(coc-range-select)
      xmap <silent> <C-s> <Plug>(coc-range-select)

      nnoremap <silent> <Space>ch <Cmd>call CocActionAsync('doHover')<CR>

      " nunmap <S-k>
      nnoremap <silent> <S-k>       <Cmd>call CocActionAsync('showSignatureHelp')<CR>

      nmap <silent> <Space>rr <Plug>(coc-rename)
      nmap <silent> <a-cr> <Plug>(coc-codeaction-cursor)
      xmap <silent> <a-cr> <Plug>(coc-codeaction-selected)
      nmap <silent> <Space>jf <Plug>(coc-fix-current)

      command -nargs=0 CocShowOutput CocCommand workspace.showOutput languageserver.nix
      command -nargs=0 CocSemanticHighlightInfo call CocActionAsync('showSemanticHighlightInfo')

      " " Workaround: https://github.com/EdenEast/nightfox.nvim/issues/236
      " lua vim.treesitter = { highlighter = { hl_map = {} } }

      " packadd! nightfox.nvim
      " " https://github.com/EdenEast/nightfox.nvim/issues/218
      " lua <<EOF
      "   require("nightfox").setup({
      "     options = {
      "       modules = {
      "         treesitter = true,
      "       },
      "     },
      "   })
      " EOF
      " colorscheme nightfox

      highlight link Identifier        TSVariable
      highlight link CocSemPath        Include
      highlight link CocSemVariable    TSVariable
      highlight link CocSemParameter   Identifier
      highlight link CocSemPunctuation TSOperator

      highlight link CocSemEscape     TSStringEscape
      highlight link CocSemUnresolved Error
      highlight link CocSemWithAttribute Underlined

      highlight link CocSemDelimiterPunctuation   TSPunctDelimiter
      highlight link CocSemConditionalKeyword     Conditional
      highlight link CocSemBuiltinVariable TSConstBuiltin
      highlight link CocSemBuiltinFunction TSFuncBuiltin
      highlight link CocSemBuiltin         TSVariableBuiltin
    '';

    cocSetting = {
      languageserver= {
        nix= {
          command =  "nil";
          filetypes= ["nix"];
          rootPatterns=  ["flake.nix"];
          # // Uncomment these to tweak settings.
          # // "settings": {
          # //   "nil": {
          # //     "formatting": { "command": ["nixpkgs-fmt"] }
          # //   }
          # // }
        };

        bash = {
          command = "bash-language-server";
          args = ["start"];
          filetypes = ["sh"];
          ignoredRootPaths = ["~"];
        };


        vimls = {
          module = "${prev.nodePackages.vim-language-server}/bin/vim-language-server";
          args = ["--node-ipc"];
          initializationOptions = {
            isNeovim = true;
            iskeyword = "@,48-57,_,192-255,-#"; # // vim iskeyword option
            vimruntime = ""; # // $VIMRUNTIME option
            runtimepath = "";   #// vim runtime path separate by `,`
            diagnostic = {
              "enable" = true;
            };
            indexes = {
              runtimepath = true;      # // if index runtimepath's vim files this will effect the suggest
              gap = 100;               # // index time gap between next file
              count = 3;               # // count of files index at the same time
              projectRootPatterns = ["strange-root-pattern" ".git" "autoload" "plugin"]; # // Names of files used as the mark of project root. If empty, the default value [".git", "autoload", "plugin"] will be used
            };
            suggest = {
              fromVimruntime = true;   # // completionItems from vimruntime's vim files
              fromRuntimepath = false;  # // completionItems from runtimepath's vim files, if this is true that fromVimruntime is true
            };
          };
          filetypes = [ "vim" ];
        };
      };
    };

    cocConfigHome = prev.writeTextFile {
      name = "coc-config";
      destination = "/coc-settings.json";
      text = builtins.toJSON cocSetting;
    };
  in
  {
    neovim = prev.neovim.override {
      viAlias = true;
      vimAlias = true;

      configure = {
        inherit customRC;

        packages.myPlugins.start = with prev.vimPlugins; [
          # Syntax Highlighting
          vim-nix
          coc-nvim
          coc-json
          # nvim-lspconfig
        ];
      };
    };
  }
