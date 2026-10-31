#!/bin/bash
set -e
BASE_REPO="https://github.com/match002001/openwrt-dlink-dap-1610-a1.git"
WORK_DIR="openwrt-build"
if [ ! -d "$WORK_DIR" ]; then
    git clone --depth 1 "$BASE_REPO" "$WORK_DIR"
fi
cd "$WORK_DIR"
cp ../config.seed .config
./scripts/feeds update -a
./scripts/feeds install -a
make defconfig
make -j4
echo ""
echo "=== ГОТОВО. Образ лежит в bin/targets/ramips/mt76x8/ ==="
ls -lh bin/targets/ramips/mt76x8/*sysupgrade.bin
