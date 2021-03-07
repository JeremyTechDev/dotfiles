<h1 align='center'>Dotfiles</h1>

<div align="center">
  <img src="https://dotfiles.github.io/images/dotfiles-logo.png" height="200" />

  <p>Jem's way to save a ton of time with dotfiles 🚀</p>
</div>

### Installation

These steps will create a copy of all the dotfiles in this repo and place them in the `$HOME` directory. It will also set a bare git repository to manage the files with `dotfiles` as the git controller keyword.

- Install basic command tools

```bash
xcode-select --install
```

- Install [Homebrew](https://brew.sh) ✨

- Add dotfiles alias:

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

- Clone dotfiles in a bare repository:

```bash
git clone --bare git@github.com:jeremy2918/dotfiles.git $HOME/.dotfiles
```

- Checkout:

```bash
dotfiles checkout
```

- If the previous step failed...

```bash
mkdir -p .dotfiles-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{}

dotfiles checkout
```

- Hide untracked files:

```bash
dotfiles config --local status.showUntrackedFiles no
```

### Install Apps with Homebrew

Run the `brew.sh` file to get brew to install all the apps I use.

```bash
cd ~/.dotfiles && ./brew.sh
```

Add ranger devicons:

```bash
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```
