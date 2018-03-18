# build-gcc-arm-none-eabi

Build scripts for build bare-metal toolchain (arm-none-eabi) with newlib

Version: 7.3.0-R1

tested on Debian buster

deps: build-essential texinfo


## settings.sh

MAKE_OPTS=-j4  make options


run script in order

tollchain in out


* src - source tarballs
* srce - for extracting sources
* build - temp dir for build
* out - target dir for toolchain
