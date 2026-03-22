# Homebrew Tap

## Install

```shell
brew tap msrdjan/tap
brew install msrdjan/tap/qai
brew install msrdjan/tap/sai
```

Note: If you use [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle), add to your `~/.Brewfile`:

```ruby
tap "msrdjan/tap"
```

## Update

```shell
brew update
brew upgrade
```

## Shell completions

Add to `~/.zshrc`:

```shell
if command -v qai > /dev/null 2>&1; then
  eval "$(qai completion zsh)"
fi

if command -v sai > /dev/null 2>&1; then
  eval "$(sai completion zsh)"
fi
```

## Formulas

| Formula | Description |
|---------|-------------|
| `qai` | Query AI coding assistants sessions |
| `sai` | Scan AI coding assistants sessions for leaked secrets |
