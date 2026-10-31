# OpenWrt для D-Link DAP-1610 (MT7628AN)

Готовые сборки OpenWrt на базе main (мерж эпохи 24.10) с LuCI и поддержкой USB.

## Авторы базы:
- [LoneWolff7/openwrt-dlink-dap-1610](https://github.com/LoneWolff7/openwrt-dlink-dap-1610) — основа
- [match002001/openwrt-dlink-dap-1610-a1](https://github.com/match002001/openwrt-dlink-dap-1610-a1) — поддержка ревизии A1

## Прошивки:
Готовые файлы — в разделе [Releases](../../releases). Нужен `*-sysupgrade.bin`.
Формат `.ubi` для этой платы **не применяется** (SPI NOR, а не NAND).

## Как прошить:
Усилитель уже на OpenWrt - прошиваем через веб-интерфейса(можно и по SSH)
Стоковая прошивка / TFTP-recovery — см. [официальную документацию OpenWrt](https://openwrt.org/docs/guide-user/installation/generic.flashing).

## ⚠️ Ревизии:
- **A1** — основная цель сборки (патч LoneWolff7 под неё).
- **A2** — проверено мною, работает без нареканий.
- Другие ревизии / стоковая прошивка — только через `sysupgrade -F` и на свой риск.

## Статус:
Скрипт авто-сборки (`build.sh`), `config.seed` и патчи локальных правок — добавлю позже.
Репозиторий в разработке, issues и PR приветствуются.
