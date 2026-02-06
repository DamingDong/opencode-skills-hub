# 🚀 OpenCode Skills Hub - GitHub 部署指南

## 创建 GitHub 仓库

### 方式 1: GitHub 网页（推荐）

1. 打开 https://github.com/new
2. Repository name: `opencode-skills-hub`
3. Description: "精选 Claude Code 技能，OpenCode 开箱即用"
4. 选择 **Public**
5. 不要勾选 "Add a README file"（我们已经有了）
6. 点击 "Create repository"

### 方式 2: GitHub CLI

```bash
# 安装 GitHub CLI (如果还没有)
brew install gh

# 登录
gh auth login

# 创建仓库
gh repo create DongDaming/opencode-skills-hub --public --source=. --push
```

---

## 推送代码到 GitHub

### 本地已完成的工作

所有代码已在 `opencode-skills-hub/` 目录中：

```bash
cd opencode-skills-hub

# 查看状态
git status

# 推送到 GitHub（创建仓库后运行）
git push -u origin main
```

---

## 部署后检查清单

- [ ] GitHub 仓库已创建
- [ ] 代码已推送到 main 分支
- [ ] README 显示正确
- [ ] 可以访问 https://github.com/DongDaming/opencode-skills-hub
- [ ] 安装脚本可下载

---

## 快速验证

```bash
# 克隆测试
git clone https://github.com/DongDaming/opencode-skills-hub.git
cd opencode-skills-hub

# 验证文件
ls -la
./install.sh --list
```

---

## 下一步

1. **添加仓库描述**
   - 在 GitHub 仓库页面点击 "Edit" 添加描述
   
2. **设置主题标签**
   - 添加 topic: `opencode`, `claude`, `skills`, `ai`
   
3. **创建 Release**
   - 点击 "Create a new release"
   - 版本号: v1.0.0
   - 发布说明: 参见 CHANGELOG.md

4. **分享项目**
   - 分享到社交媒体
   - 提交到 GitHub Trending

---

## 故障排除

### Permission denied

```bash
# 检查远程
git remote -v

# 重新添加远程
git remote set-url origin https://github.com/DongDaming/opencode-skills-hub.git
```

### 认证错误

```bash
# 使用 Personal Access Token
gh auth login

# 或使用 SSH
git remote set-url origin git@github.com:DongDaming/opencode-skills-hub.git
```
