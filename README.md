# fvm User guide

## Install

请执行下面的命令安装本工具

```shell
git clone git@github.com:baoyangc/fvm.git
cd fvm
mkdir -p $HOME/.fvm
cp -r bin $HOME/.fvm
source $HOME/.fvm/bin/fvm.sh
```

## Usage

| 功能           | 命令                 | 说明                   |
| -------------- | -------------------- | ---------------------- |
| 查看安装的版本 | `fvm list`           |                        |
| 使用某个版本   | `fvm use 1.0.0`      |                        |
| 下载某个版本   | `fvm download 1.0.0` |                        |
| 删除某个版本   | `fvm delete 1.0.0`   | 可以删除下载失败的版本 |