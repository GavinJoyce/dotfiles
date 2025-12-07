# Claude Code Configuration

This directory contains Claude Code configuration files and custom commands.

## Setup

To use these configurations, create symlinks from your `~/.claude/` directory:

```bash
# Create the ~/.claude directory if it doesn't exist
mkdir -p ~/.claude

# Symlink the settings file
ln -sf ~/dev/dotfiles/apps/claude/settings.json ~/.claude/settings.json

# Symlink the commands directory
ln -sf ~/dev/dotfiles/apps/claude/commands ~/.claude/commands/dotfiles

# Symlink skills
ln -sf ~/dev/dotfiles/apps/claude/skills/nano-banana-pro ~/.claude/skills/nano-banana-pro
```

## Directory Structure

After setup, your `~/.claude/` directory will look like:

```
~/.claude/
├── settings.json → ~/dev/dotfiles/apps/claude/settings.json
├── commands/
│   └── dotfiles/ → ~/dev/dotfiles/apps/claude/commands/
└── skills/
    └── nano-banana-pro/ → ~/dev/dotfiles/apps/claude/skills/nano-banana-pro/
```

## Available Commands

- `/gj-commit` - Smart git commit with branch creation, PR management, and merge protection
- `/gj-issue` - Create GitHub issue from conversation for AI agent implementation

## Available Skills

- `nano-banana-pro` - Generate and edit images using Google's Gemini API (requires `GEMINI_API_KEY`)

## Adding Commands

- **Shared commands**: Add to `apps/claude/commands/` in this dotfiles repo
- **Machine-specific commands**: Add to `~/.claude/commands/local/`

## Adding Skills

- **Shared skills**: Add to `apps/claude/skills/` in this dotfiles repo, then symlink to `~/.claude/skills/`