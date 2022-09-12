#!/usr/bin/env fish

# zcat src/openwrt/bin/targets/sunxi/cortexa7/feilongwrt-22.03-snapshot-unknown-sunxi-cortexa7-friendlyarm_nanopi-r1-ext4-sdcard.img.gz | sudo dd of=/dev/sda status=progress
zcat src/openwrt/bin/targets/sunxi/cortexa7/feilongwrt-22.03-snapshot-unknown-sunxi-cortexa7-friendlyarm_nanopi-r1-squashfs-sdcard.img.gz | sudo dd of=/dev/sda status=progress
sync
