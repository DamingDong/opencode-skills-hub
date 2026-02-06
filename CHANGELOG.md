# CHANGELOG

All notable changes to this project will be documented here.

## [1.0.0] - 2026-02-06

### Added

- Initial release with 35+ skills
- Official skills: pdf, docx, xlsx, pptx, skill-creator, mcp-builder, web-artifacts-builder, frontend-design, theme-factory
- Community skills: tdd, git-workflows, documentation, dockerfile-generator, react-component-generator, tailwind-class-optimizer, seo-meta-generator, jest-test-generator, vitest-test-creator, integration-test-setup, test-data-builder, api-mock-generator, api-testing-helper, openapi-spec-generator, express-route-generator, fastapi-router-creator, database-schema-designer, dynamodb-table-designer, cdk-stack-generator, cloudformation-template-creator, readme-generator, sql-transform-helper, data-quality-checker, schema-validator
- Professional skills: elixir-architect, resume-tailoring, sql-cli, template-skill
- Installation script with multiple options
- marketplace.json for skill discovery
- Complete documentation (README, getting-started, installation, skill-list)
- OpenCode configuration (.opencode/CLAUDE.md)

### Features

- One-command installation: `./install.sh --all`
- Category-based installation: `--category official|community|professional`
- Single skill installation: `--skill <name>`
- Skill listing: `--list`
- Uninstall support: `--uninstall <name>`
- Cross-platform support (Linux/macOS/WSL)

### Documentation

- Bilingual README (English + Chinese)
- Getting started guide
- Installation guide
- Complete skill list with categorization
- Contributing guidelines

### Notes

- All skills follow OpenCode SKILL.md format
- Skills are pre-converted for immediate use
- Regular updates planned from upstream sources
