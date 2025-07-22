# Claude Code Configuration

This directory contains Claude Code configuration files and custom commands.

## Setup

To use these configurations, create symlinks from your `~/.claude/` directory:

```bash
# Create the ~/.claude directory if it doesn't exist
mkdir -p ~/.claude

# Symlink the settings file
ln -sf ~/dev/dotfiles/apps/claude/settings.local.json ~/.claude/settings.local.json

# Create commands directory structure
mkdir -p ~/.claude/commands/local

# Symlink the commands directory
ln -sf ~/dev/dotfiles/apps/claude/commands ~/.claude/commands/dotfiles
```

## Directory Structure

After setup, your `~/.claude/` directory will look like:

```
~/.claude/
├── settings.local.json → ~/dev/dotfiles/apps/claude/settings.local.json
└── commands/
    ├── dotfiles/ → ~/dev/dotfiles/apps/claude/commands/
    └── local/    (for machine-specific commands)
```

## Available Commands

- `/gj-commit` - Smart git commit with branch creation, PR management, and merge protection

## Adding Commands

- **Shared commands**: Add to `apps/claude/commands/` in this dotfiles repo
- **Machine-specific commands**: Add to `~/.claude/commands/local/`