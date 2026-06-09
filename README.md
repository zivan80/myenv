# myenv

开发环境 dotfiles — 终端、语言工具链加速与网络代理规则。

## 目录结构

```
config/          # 终端配置
  ghostty          Ghostty 终端配置（Fish Shell、Aura 配色、快捷键、无边框）
  wezterm.lua      Wezterm 终端配置（Fish Shell、深色主题、快捷键）
  aura-theme.terminal  macOS 终端配色方案（Aura）
accelerate/      # 语言工具链加速
  cargo.fish       Rust/Cargo 加速（中科大稀疏索引 + 字节跳动下载源）
  uv.fish          Python uv 加速（腾讯云 PyPI + 预编译优先）
rules/           # 代理规则
  mylist.yaml      代理规则 — YAML payload 格式
  myrules.list     代理规则 — 纯域名列表格式
.gitignore
README.md
REVIEW-SUGGESTIONS.md
```

## 快速使用

### 终端

#### Ghostty

1. 安装 [Ghostty](https://ghostty.org/)
2. 将 `config/ghostty` 复制到 `~/.config/ghostty/config`

#### Wezterm

1. 安装 [Wezterm](https://wezterm.org/) 和 Fish Shell
2. 将 `config/wezterm.lua` 复制到 `~/.config/wezterm/`
3. 将 `config/aura-theme.terminal` 导入 macOS 终端 → 偏好设置 → 描述文件

### 语言加速

在 Fish Shell 中执行：

```fish
source accelerate/cargo.fish   # Rust 加速
source accelerate/uv.fish      # Python uv 加速
```

### 代理规则

将 `rules/mylist.yaml` 或 `rules/myrules.list` 的内容导入 Sing-box / Surge / Clash 等工具。

## 说明

- 所有加速配置使用 `set -Ux` 写入 Fish 全局环境变量，重启终端持久生效
- `accelerate/uv.fish` 提供一键清除命令（取消注释末尾即可使用）
- 代理规则覆盖 Google、OpenAI、TikTok、字节系等主流服务域名

---

> [!NOTE]
> 镜像源地址可能随时间失效，请根据实际情况更新。
