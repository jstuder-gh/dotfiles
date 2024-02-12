{
  description = "Dotfiles development environment";

  nixConfig.bash-prompt = "[nix(dotfiles_dev_shell)] ";

  inputs = {
    nixpkgs.url     = "github:nixos/nixpkgs/23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    let
      allSystems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      neovimOverlay = import ./dev/nix/overlays/neovim.nix;
      getHook = import ./dev/nix/shell_init_hook.nix;
    in
    flake-utils.lib.eachSystem allSystems (system:
      let
        name = "Dotfiles Dev Shell";
        shellHook = getHook { inherit name system; };

        # pkgs = nixpkgs.legacyPackages.${system}.pkgs;
        # neovim = (import ./dev/nix/neovim_pkg.nix) { inherit pkgs; };

        pkgs = nixpkgs.legacyPackages.${system}.pkgs.extend neovimOverlay;

        /*
        fooScript = pkgs.writeScriptBin "foo.sh" ''
          #!/bin/sh
          echo $FOO
        '';
        */
      in {
        # devShells.${system}.default = pkgs.mkShell rec {
        devShells.default = pkgs.mkShell {
          inherit name shellHook;
          buildInputs = [
            pkgs.git

            # pkgs.neovim
            # neovim
            pkgs.neovim

            pkgs.nodejs_20
            pkgs.kubectl

            pkgs.nixpkgs-fmt

            # Nix LSP
            pkgs.nil
            pkgs.nodePackages.vim-language-server
            pkgs.nodePackages.bash-language-server
          ];
        };
      }
    );
}
