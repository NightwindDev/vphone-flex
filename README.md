# vphone-flex
Invoke FLEX by pressing Option + F on vphone-cli. 

Tested on `vphone-cli`:
- iPhone 17 Pro, iOS 26.0
- iPhone 16, iOS 18.6.2

### How to install
Add https://repo.joshuawhe.space as a repository in the package manager in your `vphone-cli` installation. This is needed for `libvolumeflex`.
Head over to the [Releases](https://github.com/NightwindDev/vphone-flex/releases) section and download the `.deb`. Transfer it to the instance of the booted `vphone-cli` installation, and install.

### How to compile manually
Make sure you have [Theos](https://github.com/theos/theos) installed and configured.

Clone the repo and run the command you need:
```bash
make clean package THEOS_PACKAGE_SCHEME=rootless FINALPACKAGE=1
```

#### License
This project is licensed under [MIT](LICENSE).

###### Copyright (c) 2026 Nightwind