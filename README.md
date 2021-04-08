# Containers on a ZedBoard

## A buildroot-derived experiment in embedded containerization

This repository is a sandbox where I put containers onto an embedded hybrid SoC (Digilent ZedBoard).

```
git submodule update --init --recursive
make
sudo dd if=buildroot/output/images/sdcard.img of=/dev/[device]
```
