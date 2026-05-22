# =====================================================================
#  📌 UV Package Manager Speedup Configuration for Fish Shell
#  🚀 适用场景：新机初始化、换环境一键恢复、解决国内下载缓慢/编译报错
# =====================================================================

# 1. 切换 PyPI 依赖包下载源为腾讯云大厂镜像（解决 90% 的包下载卡顿）
set -Ux UV_INDEX_URL https://mirrors.cloud.tencent.com/pypi/simple/

# 2. 全局开启“预编译二进制优先”策略（拒绝本地源码编译，0.5秒直下成品，完美避开版本冲突）
set -Ux UV_ONLY_BINARY :all:

# 3. 切换 Python 独立解释器下载源为国内官方高速通道（解决 uvx --python 下载环境慢的问题）
set -Ux UV_PYTHON_INSTALL_MIRROR https://pub-cn-bj.pypa.io/python-build-standalone

# 4. 打印成功日志
echo "✨ [Success] UV 全局加速环境变量已成功烙印，重启终端依然有效。"

# 5. 一键擦除所有自定义的 UV 环境变量
# set -Ue UV_INDEX_URL; and set -Ue UV_ONLY_BINARY; and set -Ue UV_PYTHON_INSTALL_MIRROR; and echo "🧼 UV 环境变量已彻底清空，已恢复官方默认全局状态。"
