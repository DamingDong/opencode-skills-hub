# 安装指南

详细说明各种安装方式和使用技巧。

## 安装方式

### 方式 1: 使用安装脚本（推荐）

```bash
# 克隆项目
git clone https://github.com/DongDaming/opencode-skills-hub.git
cd opencode-skills-hub

# 添加执行权限
chmod +x install.sh
```

#### 安装所有技能

```bash
./install.sh --all
```

#### 安装特定类别

```bash
./install.sh --category official    # 只装官方技能
./install.sh --category community    # 只装社区技能
./install.sh --category professional # 只装专业技能
```

#### 安装单个技能

```bash
./install.sh --skill pdf
./install.sh --skill tdd
./install.sh --skill resume-tailoring
```

#### 查看所有可用技能

```bash
./install.sh --list
```

### 方式 2: 手动安装

```bash
# 创建技能目录
mkdir -p ~/.opencode/skills/

# 复制技能文件夹
cp -r skills/official/pdf ~/.opencode/skills/
cp -r skills/community/react-component-generator ~/.opencode/skills/
```

### 方式 3: 直接从 GitHub 安装（无需克隆）

```bash
# 安装单个技能
curl -fsSL https://raw.githubusercontent.com/DongDaming/opencode-skills-hub/main/skills/official/pdf/SKILL.md > ~/.opencode/skills/pdf/SKILL.md
mkdir -p ~/.opencode/skills/pdf
# 需要复制整个目录，手动方式更可靠
```

## 安装位置

技能将安装到以下位置：

| 类型 | 位置 |
|------|------|
| 用户级别 | `~/.opencode/skills/` |
| 项目级别 | `.opencode/skills/` |

## 更新技能

### 更新所有技能

```bash
# 拉取最新版本
git pull

# 重新安装
./install.sh --all
```

### 更新单个技能

```bash
./install.sh --uninstall pdf
./install.sh --skill pdf
```

## 卸载技能

```bash
./install.sh --uninstall pdf
```

或者手动删除：

```bash
rm -rf ~/.opencode/skills/pdf
```

## 权限问题

### macOS/Linux

如果遇到权限问题：

```bash
# 检查文件权限
ls -la install.sh

# 添加执行权限
chmod +x install.sh

# 确保目标目录存在
mkdir -p ~/.opencode/skills/
```

### Windows

在 Windows 上使用 WSL (Windows Subsystem for Linux)：

```bash
# 在 WSL 中
wsl ./install.sh --all
```

## 验证安装

### 方法 1: 检查目录

```bash
ls ~/.opencode/skills/
```

### 方法 2: 使用 OpenCode

1. 重启 OpenCode
2. 尝试使用技能：
   - "使用 pdf 技能"
   - "用 tdd 方式开发"

## 常见问题

### Q: 技能安装后不工作？

A: 请尝试：
1. 重启 OpenCode
2. 检查技能文件是否完整
3. 查看 [故障排除](faq.md)

### Q: 可以安装到项目级别吗？

A: 可以，复制到项目目录：

```bash
cp -r skills/official/pdf .opencode/skills/
```

### Q: 如何回滚版本？

A: 使用 git 回滚：

```bash
git log --oneline
git checkout <commit-hash>
```

## 相关文档

- [快速开始](getting-started.md)
- [技能列表](skill-list.md)
- [常见问题](faq.md)
