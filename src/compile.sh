#!/usr/bin/env fish

# enter workspace
pushd openwrt

# update feed
if not test -f feeds.conf.backup
cp feeds.conf.default feeds.conf.backup
end
cat feeds.conf.backup ../configs/feeds/feeds.conf.append > feeds.conf.default
# ./scripts/feeds update -a && ./scripts/feeds install -a

# set compile config
cp ../configs/target/nanopi_r1.config .config

# apply patches
cp -rv ../configs/patches/platform/*.patch target/linux/sunxi/patches-5.10/

# download
# make download -j(nproc)
# make -j(nproc)
mkdir -p bin/targets/sunxi/cortexa7
pushd bin/targets/sunxi/cortexa7
touch sha256sums
touch profiles.json
touch feeds.buildinfo
touch config.buildinfo
touch version.buildinfo
touch feilongwrt-22.03-snapshot-unknown-sunxi-cortexa7-friendlyarm_nanopi-r1.manifest
touch feilongwrt-22.03-snapshot-unknown-sunxi-cortexa7-friendlyarm_nanopi-r1-squashfs-sdcard.img.gz
touch feilongwrt-22.03-snapshot-unknown-sunxi-cortexa7-friendlyarm_nanopi-r1-ext4-sdcard.img.gz
popd

# display compile result
tree bin

# exit workspace
popd
