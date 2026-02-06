# 技能列表

完整列出所有可用的 OpenCode 技能。

## 按类别浏览

### 📄 文档处理 (Document)

| 技能名 | 来源 | 描述 | 难度 |
|--------|------|------|------|
| pdf | 官方 | PDF 处理与操作 | ⭐⭐ |
| docx | 官方 | Word 文档处理 | ⭐⭐ |
| xlsx | 官方 | Excel 表格处理 | ⭐⭐ |
| pptx | 官方 | PowerPoint 演示文稿 | ⭐⭐ |

### 🧪 测试 (Testing)

| 技能名 | 来源 | 描述 | 难度 |
|--------|------|------|------|
| tdd | 社区 | 测试驱动开发工作流 | ⭐⭐⭐ |
| jest-test-generator | 社区 | Jest 测试文件生成 | ⭐⭐ |
| vitest-test-creator | 社区 | Vitest 测试套件创建 | ⭐⭐ |
| integration-test-setup | 社区 | 集成测试基础设施 | ⭐⭐⭐ |

### 🎨 前端开发 (Frontend)

| 技能名 | 来源 | 描述 | 难度 |
|--------|------|------|------|
| react-component-generator | 社区 | React 组件生成 | ⭐⭐ |
| tailwind-class-optimizer | 社区 | Tailwind CSS 优化 | ⭐ |
| seo-meta-generator | 社区 | SEO meta 标签生成 | ⭐ |
| web-artifacts-builder | 官方 | 复杂 React 组件构建 | ⭐⭐⭐⭐ |
| frontend-design | 官方 | 前端界面设计 | ⭐⭐⭐ |
| theme-factory | 官方 | 主题样式工厂 | ⭐⭐ |

### ⚙️ 后端开发 (Backend)

| 技能名 | 来源 | 描述 | 难度 |
|--------|------|------|------|
| express-route-generator | 社区 | Express.js 路由生成 | ⭐⭐ |
| fastapi-router-creator | 社区 | FastAPI 路由模块创建 | ⭐⭐ |
| database-schema-designer | 社区 | 数据库 Schema 设计 | ⭐⭐⭐ |

### 🐳 DevOps

| 技能名 | 来源 | 描述 | 难度 |
|--------|------|------|------|
| dockerfile-generator | 社区 | Dockerfile 生成 | ⭐⭐ |
| git-workflows | 社区 | Git 工作流管理 | ⭐⭐ |
| cdk-stack-generator | 社区 | AWS CDK 堆栈生成 | ⭐⭐⭐ |
| cloudformation-template-creator | 社区 | CloudFormation 模板创建 | ⭐⭐⭐ |

### 📊 数据处理 (Data)

| 技能名 | 来源 | 描述 | 难度 |
|--------|------|------|------|
| sql-transform-helper | 社区 | SQL 查询转换优化 | ⭐⭐ |
| data-quality-checker | 社区 | 数据质量检查 | ⭐⭐ |
| schema-validator | 社区 | JSON Schema 验证 | ⭐ |

### 🔧 开发工具 (Tools)

| 技能名 | 来源 | 描述 | 难度 |
|--------|------|------|------|
| skill-creator | 官方 | 创建新技能 | ⭐⭐⭐ |
| mcp-builder | 官方 | MCP 服务器开发 | ⭐⭐⭐⭐ |
| template-skill | 专业 | 技能创建模板 | ⭐ |
| readme-generator | 社区 | README 文件生成 | ⭐ |
| api-mock-generator | 社区 | API Mock 生成 | ⭐⭐ |
| api-testing-helper | 社区 | API 测试助手 | ⭐⭐ |
| openapi-spec-generator | 社区 | OpenAPI 规范生成 | ⭐⭐ |

### 🎯 专业领域 (Professional)

| 技能名 | 来源 | 描述 | 领域 |
|--------|------|------|------|
| elixir-architect | 专业 | Elixir/Phoenix 开发 | 函数式 |
| resume-tailoring | 专业 | AI 简历优化 | 求职 |
| sql-cli | 专业 | SQL 命令行工具 | 数据库 |

## 按难度分类

### ⭐ 入门级 (适合初学者)

- tailwind-class-optimizer
- seo-meta-generator
- schema-validator
- template-skill
- readme-generator

### ⭐⭐ 进阶级 (适合有经验的开发者)

- pdf, docx, xlsx, pptx
- jest-test-generator
- vitest-test-creator
- react-component-generator
- express-route-generator
- fastapi-router-creator
- dockerfile-generator
- git-workflows
- api-mock-generator
- api-testing-helper
- sql-transform-helper
- data-quality-checker

### ⭐⭐⭐ 高级 (适合专业开发者)

- tdd
- integration-test-setup
- database-schema-designer
- cdk-stack-generator
- cloudformation-template-creator
- frontend-design
- web-artifacts-builder
- skill-creator

### ⭐⭐⭐⭐ 专家级 (适合资深开发者)

- mcp-builder
- elixir-architect

## 搜索技能

使用 `install.sh --list` 查看所有技能：

```bash
./install.sh --list
```

过滤特定类别：

```bash
# 只显示官方技能
ls skills/official/*/

# 只显示前端技能
ls skills/community/*-frontend-*/ 2>/dev/null || echo "使用 install.sh --list 查看"
```

## 相关文档

- [快速开始](getting-started.md)
- [安装指南](installation.md)
- [常见问题](faq.md)
