# OpenCode Skills Hub

<div align="center">

**精选 Claude Code 技能，OpenCode 开箱即用**

[![GitHub Stars](https://img.shields.io/github/stars/DongDaming/opencode-skills-hub)](https://github.com/DongDaming/opencode-skills-hub)
[![GitHub Issues](https://img.shields.io/github/issues/DongDaming/opencode-skills-hub)](https://github.com/DongDaming/opencode-skills-hub/issues)
[![License](https://img.shields.io/github/license/DongDaming/opencode-skills-hub)](https://github.com/DongDaming/opencode-skills-hub/blob/main/LICENSE)

**English** | [中文](README_CN.md)

</div>

---

## ✨ 特性

- 🚀 **一键安装** - 30+ 精选技能，30 秒开始使用
- 📦 **官方品质** - 来自 Anthropic 官方和社区热门验证
- 🔄 **持续更新** - 每周同步上游，保持最新
- 🌏 **中文友好** - 优先支持中文开发者
- 📖 **开箱即用** - 无需配置，直接安装使用

---

## 🚀 快速开始

### 一键安装所有技能

```bash
curl -fsSL https://raw.githubusercontent.com/DongDaming/opencode-skills-hub/main/install.sh | bash
```

### 安装特定技能

```bash
# 安装 PDF 处理技能
./install.sh --skill pdf

# 安装所有官方技能
./install.sh --category official

# 安装所有测试相关技能
./install.sh --category testing
```

### 查看所有技能

```bash
./install.sh --list
```

---

## 📦 技能分类

### 官方技能 (Official) - 来自 Anthropic

| 技能 | 描述 | 标签 |
|------|------|------|
| [pdf](skills/official/pdf/) | PDF 处理与操作 | document |
| [docx](skills/official/docx/) | Word 文档处理 | document |
| [xlsx](skills/official/xlsx/) | Excel 表格处理 | document |
| [pptx](skills/official/pptx/) | PowerPoint 演示文稿 | document |
| [skill-creator](skills/official/skill-creator/) | 创建新技能 | meta |
| [mcp-builder](skills/official/mcp-builder/) | MCP 服务器开发 | integration |
| [web-artifacts-builder](skills/official/web-artifacts-builder/) | React 组件构建 | frontend |
| [frontend-design](skills/official/frontend-design/) | 前端界面设计 | design |
| [theme-factory](skills/official/theme-factory/) | 主题样式工厂 | theme |

### 社区精选 (Community) - 来自 Claude Code 社区

| 类别 | 技能数 | 代表技能 |
|------|--------|----------|
| 测试 (Testing) | 4 | tdd, jest-test-generator, vitest-test-creator |
| 前端 (Frontend) | 3 | react-component-generator, tailwind-class-optimizer |
| 后端 (Backend) | 4 | express-route-generator, fastapi-router-creator |
| DevOps | 2 | dockerfile-generator, git-workflows |
| 云服务 (Cloud) | 3 | dynamodb-table-designer, cdk-stack-generator |
| 文档 (Docs) | 2 | readme-generator, documentation |

### 专业领域 (Professional) - 特定领域专家

| 技能 | 描述 | 领域 |
|------|------|------|
| [elixir-architect](skills/professional/elixir-architect/) | Elixir/Phoenix 开发专家 | Functional |
| [resume-tailoring](skills/professional/resume-tailoring/) | AI 简历优化 | Career |
| [sql-cli](skills/professional/sql-cli/) | SQL 命令行工具 | Database |
| [template-skill](skills/professional/template-skill/) | 技能创建模板 | Meta |

---

## 📊 技能统计

| 来源 | 数量 | 说明 |
|------|------|------|
| 官方 (Official) | 9 | Anthropic 官方技能，64K+ stars |
| 社区 (Community) | 22 | Claude Code 社区精选 |
| 专业 (Professional) | 4 | 特定领域专家技能 |
| **总计** | **35+** | 持续增加中 |

---

## 📖 文档

- [快速开始](docs/getting-started.md)
- [安装指南](docs/installation.md)
- [技能列表](docs/skill-list.md)
- [常见问题](docs/faq.md)

---

## 🤝 贡献

欢迎贡献！请阅读 [贡献指南](docs/CONTRIBUTING.md)。

### 贡献方式

1. **提交 Issue** - 报告问题或建议新技能
2. **Pull Request** - 添加或改进技能
3. **社区分享** - 在社交媒体分享项目

---

## 📝 更新日志

查看 [CHANGELOG](CHANGELOG.md) 了解最新更新。

---

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件。

---

## 🙏 致谢

- [Anthropic](https://www.anthropic.com/) - Claude Code 官方
- [Claude Code Community](https://github.com/jeremylongshore/claude-code-plugins-plus-skills) - 社区技能来源
- [Awesome Claude Skills](https://github.com/karanb192/awesome-claude-skills) - 技能精选

---

<div align="center">

**如果这个项目对您有帮助，请给一个 ⭐ Star！**

</div>
