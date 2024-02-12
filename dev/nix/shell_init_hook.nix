
{name, system}: ''
  printf "Running ${name}\n"
  printf "System ${system}\n"

  printf "\n____\n"
  printf "nodejs version:\n"
  printf "$(node --version)\n"

  printf "\n____\n"
  printf "git Version:\n"
  printf "$(git --version)\n"

  printf "\n____\n"
  printf "neovim Version:\n"
  printf "$(nvim --version)\n"

  printf "\n____\n"
  printf "kubectl Version:\n"
  printf "$(kubectl version)\n"
''
