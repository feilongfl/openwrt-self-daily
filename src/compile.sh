#!/usr/bin/env fish

# enter workspace
pushd openwrt

# update feed
if not test -f feeds.conf.backup
cp feeds.conf.default feeds.conf.backup
end
cat feeds.conf.backup ../configs/feeds/feeds.conf.append > feeds.conf.default
./scripts/feeds update -a && ./scripts/feeds install -a

# set compile config
cp ../configs/target/nanopi_r1.config .config

# download
make download -j(nproc) V=s
make -j(nproc) V=s

# exit workspace
popd
