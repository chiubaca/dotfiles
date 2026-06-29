# dotfiles

Managed with a bare git repo. Files stay in place in `$HOME` — no symlinks, no extra tools.

## What's tracked

- `.zshrc` — shell config (zsh)
- `.gitconfig` — git identity
- `.config/ghostty/config` — Ghostty terminal
- `.config/herdr/config.toml` — herdr
- `.config/opencode/opencode.jsonc` — opencode (uses `${NOUS_PORTAL_API_KEY}` env var, no hardcoded secrets)
- `.config/opencode/plugins/herdr-agent-state.js` — opencode plugin

## Setup on a new machine

```bash
git clone --bare https://github.com/chiubaca/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

Add the alias to `~/.zshrc` to make it permanent:

```bash
echo "alias config='/usr/bin/git --git-dir=\$HOME/.cfg/ --work-tree=\$HOME'" >> ~/.zshrc
```

If `config checkout` complains that files already exist, back them up and retry:

```bash
mkdir -p $HOME/.config-backup && \
config checkout 2>&1 | grep "\t" | awk '{print $1}' | \
xargs -I{} mv {} $HOME/.config-backup/{}
config checkout
```

## Day-to-day usage

```bash
config status
config add .zshrc
config commit -m "tweak zshrc"
config push
```

Only files you explicitly `config add` are tracked. Never `config add .` — review first, since this repo is public.

## Notes

- Repo is **public**. Never track secrets (API keys, tokens, SSH keys). The opencode config references env vars only.
- Per-machine differences: use in-file conditionals (e.g. `if [[ $(hostname) = ... ]]` blocks) rather than per-machine branches.
