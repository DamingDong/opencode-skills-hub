# CLAUDE.md - OpenCode Skills Hub Configuration

This file provides context for OpenCode AI assistants.

## Project Overview

OpenCode Skills Hub - A curated collection of Claude Code skills for OpenCode.

## Skills Structure

- `skills/official/` - Skills from Anthropic official
- `skills/community/` - Skills from Claude Code community
- `skills/professional/` - Domain-specific expert skills

## Commands

- `./install.sh --list` - List all available skills
- `./install.sh --all` - Install all skills
- `./install.sh --skill <name>` - Install specific skill
- `./install.sh --category <name>` - Install category

## Development Notes

- Skills follow OpenCode SKILL.md format
- Install script supports Linux/macOS/WSL
- Skills install to `~/.opencode/skills/`
