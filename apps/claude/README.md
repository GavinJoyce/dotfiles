# Claude Code Configuration

This directory contains Claude Code configuration files and custom commands.

## Setup

To use these configurations, create symlinks from your `~/.claude/` directory:

```bash
# Create the ~/.claude directory if it doesn't exist
mkdir -p ~/.claude/commands

# Symlink the settings file
ln -sf ~/dev/dotfiles/apps/claude/settings.local.json ~/.claude/settings.local.json

# Symlink individual command files (Claude Code only scans top-level commands directory)
ln -sf ~/dev/dotfiles/apps/claude/commands/gj-commit.md ~/.claude/commands/gj-commit.md

# Add more command symlinks as needed
# ln -sf ~/dev/dotfiles/apps/claude/commands/another-command.md ~/.claude/commands/another-command.md
```

**Note**: Claude Code only detects commands in the top-level `~/.claude/commands/` directory. Commands must be directly in this directory, not in subdirectories.

## Directory Structure

After setup, your `~/.claude/` directory will look like:

```
~/.claude/
├── settings.local.json → ~/dev/dotfiles/apps/claude/settings.local.json
└── commands/
    └── gj-commit.md → ~/dev/dotfiles/apps/claude/commands/gj-commit.md
```

## Available Commands

- `/gj-commit` - Smart git commit with branch creation, PR management, and merge protection

## Adding Commands

- **Shared commands**: Add to `apps/claude/commands/` in this dotfiles repo
- **Machine-specific commands**: Add to `~/.claude/commands/local/`