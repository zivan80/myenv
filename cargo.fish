# =====================================================================
#  📌 Cargo & Rust 生态全自动多线程加速配置 (Fish Shell)
#  🚀 模块化存储：建议命名为 `cargo.fish` 并存入个人 GitHub 仓库
# =====================================================================

echo "⏳ 正在注入 Rust/Cargo 生产力环境加速变量..."

# 1. 开启最现代化的稀疏索引协议（结合中科大官方规范，彻底告别旧版 Git 索引卡顿）
set -Ux CARGO_REGISTRIES_CRATES_IO_PROTOCOL sparse
set -Ux CARGO_REGISTRY_GLOBAL_CREDENTIAL_PROVIDERS "cargo:token"  # 确保现代安全协议兼容

# 2. 将 Crate 依赖源指向中科大稀疏镜像站
set -Ux CARGO_REGISTRY_SRC_INDEX_CRATES_IO_INDEX "sparse+https://mirrors.ustc.edu.cn/crates.io-index/"

# 3. 将 Rustup 及基础工具链下载源切到字节跳动高速通道（兼顾浏览器直开与全公开透明）
set -Ux RUSTUP_DIST_SERVER https://mirrors.volces.com/rustup
set -Ux RUSTUP_UPDATE_ROOT https://mirrors.volces.com/rustup/rustup

# 4. 压榨硬件极限：全自动获取当前 Mac 的全部物理核心，开启饱和级并行编译
set -Ux CARGO_BUILD_JOBS (sysctl -n hw.ncpu)

# ---------------------------------------------------------------------
echo "🚀 [Success] Cargo 极限加速模块注入成功！"
echo "🛠️  稀疏索引协议已绑定 USTC，基础工具链已绑定 ByteDance 多线程。"
