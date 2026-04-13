# nikbucher's Homebrew Tap

Homebrew tap for my CLI tools and macOS apps.

## Install

```bash
brew tap nikbucher/tap
```

## Install Packages

```bash
# formula
brew install nikbucher/tap/<name>

# cask
brew install --cask nikbucher/tap/<name>
```

## Packages

### Formulae

- [`idgen`](https://github.com/nikbucher/idgen) — CLI tool for generating random NanoID-style identifiers
- [`konzertmeister-cli`](https://github.com/nikbucher/konzertmeister-cli) — CLI for the Konzertmeister API — manage appointments for music groups

### Casks

- [`audio-snip`](https://github.com/nikbucher/audio-snip) — Extract audio from video files using FFmpeg

## Update / Uninstall

```bash
brew update
brew upgrade

brew uninstall <formula>
brew uninstall --cask <cask>
```

## Notes

- Run `brew info nikbucher/tap/<name>` for per-tool caveats (permissions, setup steps, etc.).
