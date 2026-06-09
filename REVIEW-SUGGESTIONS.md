# 项目改进建议

以下内容供审阅后决定是否实施。

## 需要修改

### 1. `uv.fish` 中 Python 下载源可能不稳定

`UV_PYTHON_INSTALL_MIRROR` 当前指向 `gh-proxy.com`，该代理站不一定长期可用。

- 建议：确认当前可用性，或提供备选镜像源（如 `https://mirror.ghproxy.com/` 或其他国内代理）

### 2. 代理规则文件命名不够明确

`mylist.yaml` 和 `myrules.list` 内容完全相同，仅格式不同，文件名无法体现用途。

- 建议重命名为 `proxy-domains.list` 和 `proxy-domains.yaml`
- 或在文件名中包含代理工具名，如 `sing-box-rules.list`

### 3. 缺少安装 / 部署方式说明

目前未说明期望的使用方式：是手动 `cp` 文件、使用 `stow`、还是符号链接管理。

- 建议在 README 或单独的 `INSTALL.md` 中说明推荐的部署方式

## 建议补充

### 4. README 开头缺少一句话项目定位

当前开头一句话偏简短，访客可能 3 秒内无法理解项目全貌。

- 建议添加一段简短的"这是什么 + 解决什么问题"段落，例如：
  > 本仓库收集并整理了一套 macOS 开发环境的常用配置，涵盖终端定制、语言工具链下载加速、以及代理服务域名规则，适合新机初始化或换环境时快速恢复。

### 5. 缺少开源许可证

如果项目打算公开分享，目前没有添加任何 LICENSE 文件。

- 建议添加 `LICENSE` 文件（如 MIT License），明确使用权限

### 6. 代理规则文件缺少注释说明

`mylist.yaml` 和 `myrules.list` 内部没有注释，后续维护容易丢失每条规则的上下文。

- 建议在文件头部添加一段使用说明，说明规则格式（`+.domain` 后缀匹配、精确匹配等）
- 可按服务类别分组并添加分类注释（Google / OpenAI / TikTok / 字节系 等）

### 7. 项目结构可进一步优化

当前所有文件扁平排列在根目录，随着配置增多可能变得杂乱。

- 建议考虑按功能分目录，例如：
  ```
  config/        # 终端配置（.wezterm.lua, aura-theme.terminal）
  accelerate/    # 加速脚本（cargo.fish, uv.fish）
  rules/         # 代理规则
  ```
- 或使用 `stow` 风格的软链接管理，更利于版本控制和同步
