# 快速开始

本指南帮助您在 30 秒内开始使用 OpenCode Skills Hub。

## 前置要求

- OpenCode 已安装 (https://opencode.ai)
- Git (用于安装脚本)
- Bash shell (Linux/macOS/WSL)

## 步骤 1: 克隆项目

```bash
# 克隆到本地
git clone https://github.com/DongDaming/opencode-skills-hub.git
cd opencode-skills-hub
```

或者直接使用安装脚本（无需克隆）：

```bash
curl -fsSL https://raw.githubusercontent.com/DongDaming/opencode-skills-hub/main/install.sh | bash -s -- --all
```

## 步骤 2: 安装技能

### 方式 A: 一键安装所有技能

```bash
chmod +x install.sh
./install.sh --all
```

### 方式 B: 安装特定类别

```bash
# 只安装官方技能
./install.sh --category official

# 只安装社区技能
./install.sh --category community

# 只安装专业技能
./install.sh --category professional
```

### 方式 C: 安装单个技能

```bash
./install.sh --skill pdf
./install.sh --skill react-component-generator
./install.sh --skill resume-tailoring
```

## 步骤 3: 验证安装

```bash
# 查看已安装的技能
ls ~/.opencode/skills/

# 或者使用 install.sh 列出所有可用技能
./install.sh --list
```

## 步骤 4: 在 OpenCode 中使用

1. 重启 OpenCode
2. 直接在对话中提及技能名称，例如：
   - "使用 pdf 技能处理这个文件"
   - "用 tdd 方式开发这个功能"
   - "用 react-component-generator 创建组件"

## 下一步

- 查看 [技能列表](skill-list.md) 了解所有技能
- 阅读 [安装指南](installation.md) 了解更多用法
- 浏览 [常见问题](faq.md) 解决常见问题

## 故障排除

### 技能没有显示？

1. 确保 OpenCode 已重启
2. 检查技能是否正确安装：`ls ~/.opencode/skills/`
3. 查看错误信息

### 安装失败？

```bash
# 检查权限
ls -la install.sh

# 确保有执行权限
chmod +x install.sh

# 手动安装测试
cp -r skills/official/pdf ~/.opencode/skills/
```

### 需要帮助？

查看 [常见问题](faq.md) 或 [提交 Issue](https://github.com/DongDaming/opencode-skills-hub/issues)
