# CHANGELOG

All notable changes to this project will be documented here.

## [1.1.0] - 2026-02-06

### Added

- **Massive skill expansion: 35 → 285+ skills (+250 skills)**
- **New skill categories:**
  - DevOps Basics (25+ skills): docker, git, ci/cd, kubernetes
  - DevOps Advanced (20+ skills): terraform, helm, istio, vault
  - Testing Automation (25+ skills): jest, vitest, mocha, pytest
  - Frontend Development (25+ skills): react, vue, accessibility, seo
  - API Development (25+ skills): openapi, graphql, rest, swagger
  - Backend Development (25+ skills): express, fastapi, django, nestjs
  - AWS Cloud (25+ skills): lambda, s3, dynamodb, ecs, eks
  - Data Pipelines (20+ skills): spark, airflow, dbt, kafka
  - Security Fundamentals (25+ skills): jwt, oauth, security-headers
  - ML Training (25+ skills): pytorch, tensorflow, mlflow
  - Performance Testing (25+ skills): k6, jmeter, gatling, locust

### Updated

- marketplace.json: Now contains 285+ skills with full metadata
- install.sh: Enhanced category support (devops, testing, frontend, backend, cloud, security, ml, data)
- README: Updated statistics and category descriptions

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
