# Nix Conf

Configuration files for Nix toolchains


## Setting up

Source the main file from the default Nix configuration.

At a user-level, this is typically`~/.config/nix/nix.conf


```
# Include path to (relative to nix.conf location)
include ../../<PATH_TO_DOTFILES_REPO>/nix/nix.conf
```

## Configuration

Configure Nix toolchain using key = value pairs:

eg,

```
# Pound denotes comment
keep-outputs = true       # Nice for developers
keep-derivations = true   # Idem
```

See link for supported options:

https://nixos.org/manual/nix/stable/command-ref/conf-file.html

