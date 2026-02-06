#!/bin/bash

# OpenCode Skills Hub - 一键安装脚本
# 用法: ./install.sh [--category CATEGORY] [--skill SKILL] [--all]

set -euo pipefail

# 配置
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OPENCODE_SKILLS_DIR="${HOME}/.opencode/skills"
GITHUB_REPO="DongDaming/opencode-skills-hub"
VERSION="1.0.0"

# 颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

echo_success() {
    echo -e "${GREEN}✓${NC} $1"
}

echo_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

echo_error() {
    echo -e "${RED}✗${NC} $1"
}

# 显示帮助
show_help() {
    cat << EOF
OpenCode Skills Hub v${VERSION}

用法: $0 [选项]

选项:
  --help, -h              显示帮助信息
  --all                   安装所有技能
  --category CATEGORY     安装指定类别的所有技能
                          可用类别: official, community, professional
  --skill SKILL_NAME      安装指定技能
  --list                  列出所有可用技能
  --update                更新到最新版本
  --uninstall SKILL_NAME  卸载指定技能

示例:
  $0 --all                    # 安装所有技能
  $0 --category official      # 安装所有官方技能
  $0 --skill pdf              # 安装 PDF 处理技能
  $0 --list                   # 列出所有技能

更多信息: https://github.com/${GITHUB_REPO}
EOF
}

# 列出所有技能
list_skills() {
    echo -e "${BLUE}OpenCode Skills Hub - 可用技能列表${NC}\n"
    echo -e "${GREEN}官方技能 (Official) - 来自 Anthropic 官方${NC}"
    echo "=============================================="
    for skill in "${SCRIPT_DIR}/skills/official"/*/; do
        if [ -d "$skill" ] && [ -f "${skill}SKILL.md" ]; then
            name=$(basename "$skill")
            desc=$(grep "^# " "${skill}SKILL.md" | head -1 | sed 's/# //')
            echo -e "  ${GREEN}•${NC} ${name}"
            echo "    ${desc}"
        fi
    done

    echo -e "\n${GREEN}社区精选 (Community) - 来自 Claude Code 社区${NC}"
    echo "=============================================="
    for skill in "${SCRIPT_DIR}/skills/community"/*/; do
        if [ -d "$skill" ] && [ -f "${skill}SKILL.md" ]; then
            name=$(basename "$skill")
            desc=$(grep "^# " "${skill}SKILL.md" | head -1 | sed 's/# //')
            echo -e "  ${GREEN}•${NC} ${name}"
            echo "    ${desc}"
        fi
    done

    echo -e "\n${GREEN}专业领域 (Professional) - 特定领域专家技能${NC}"
    echo "=============================================="
    for skill in "${SCRIPT_DIR}/skills/professional"/*/; do
        if [ -d "$skill" ] && [ -f "${skill}SKILL.md" ]; then
            name=$(basename "$skill")
            desc=$(grep "^# " "${skill}SKILL.md" | head -1 | sed 's/# //')
            echo -e "  ${GREEN}•${NC} ${name}"
            echo "    ${desc}"
        fi
    done

    echo -e "\n总计: $(find "${SCRIPT_DIR}/skills" -name "SKILL.md" | wc -l) 个技能"
}

# 安装单个技能
install_skill() {
    local source="$1"
    local skill_name=$(basename "$source")
    local target="${OPENCODE_SKILLS_DIR}/${skill_name}"

    # 检查源是否存在
    if [ ! -d "$source" ]; then
        echo_error "技能不存在: ${skill_name}"
        return 1
    fi

    # 检查是否已安装
    if [ -d "$target" ]; then
        echo_warning "技能已存在: ${skill_name}"
        read -p "是否覆盖? (y/N) " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo_info "跳过安装"
            return 0
        fi
    fi

    # 创建目标目录
    mkdir -p "${OPENCODE_SKILLS_DIR}"

    # 复制技能
    cp -r "$source" "$target"
    echo_success "已安装: ${skill_name}"

    # 移除 .git 目录（如果存在）
    if [ -d "${target}/.git" ]; then
        rm -rf "${target}/.git"
    fi
}

# 安装类别
install_category() {
    local category="$1"
    local source_dir="${SCRIPT_DIR}/skills/${category}"

    if [ ! -d "$source_dir" ]; then
        echo_error "类别不存在: ${category}"
        return 1
    fi

    echo_info "安装 ${category} 类别下的所有技能..."
    echo "========================================"

    local count=0
    for skill in "${source_dir}"/*/; do
        if [ -d "$skill" ] && [ -f "${skill}SKILL.md" ]; then
            install_skill "$skill"
            ((count++))
        fi
    done

    echo_success "已安装 ${count} 个 ${category} 技能"
}

# 安装所有技能
install_all() {
    echo_info "安装所有 OpenCode Skills Hub 技能..."
    echo "========================================"

    install_category "official"
    echo
    install_category "community"
    echo
    install_category "professional"

    echo_success "所有技能安装完成!"
    echo_info "安装位置: ${OPENCODE_SKILLS_DIR}"
}

# 卸载技能
uninstall_skill() {
    local skill_name="$1"
    local target="${OPENCODE_SKILLS_DIR}/${skill_name}"

    if [ ! -d "$target" ]; then
        echo_error "技能未安装: ${skill_name}"
        return 1
    fi

    rm -rf "$target"
    echo_success "已卸载: ${skill_name}"
}

# 主逻辑
main() {
    # 确保 OpenCode 技能目录存在
    mkdir -p "${OPENCODE_SKILLS_DIR}"

    case "${1:-}" in
        --help|-h)
            show_help
            ;;
        --list)
            list_skills
            ;;
        --all)
            install_all
            ;;
        --category)
            if [ -z "${2:-}" ]; then
                echo_error "请指定类别"
                show_help
                exit 1
            fi
            install_category "$2"
            ;;
        --skill)
            if [ -z "${2:-}" ]; then
                echo_error "请指定技能名称"
                show_help
                exit 1
            fi
            # 搜索技能
            local skill_path=""
            for dir in "${SCRIPT_DIR}/skills"/*/; do
                if [ -d "${dir}${2}" ]; then
                    skill_path="${dir}${2}"
                    break
                fi
            done

            if [ -z "$skill_path" ]; then
                echo_error "技能不存在: ${2}"
                exit 1
            fi

            install_skill "$skill_path"
            ;;
        --uninstall)
            if [ -z "${2:-}" ]; then
                echo_error "请指定技能名称"
                show_help
                exit 1
            fi
            uninstall_skill "$2"
            ;;
        --update)
            echo_info "检查更新..."
            echo_warning "请手动更新: cd ${SCRIPT_DIR} && git pull"
            ;;
        "")
            show_help
            ;;
        *)
            echo_error "未知选项: $1"
            show_help
            exit 1
            ;;
    esac
}

main "$@"
