# VirtOS 虚拟操作系统

基于Debian源发布的虚拟操作系统，用于裸金属主机操作系统的部署，简化虚拟化、容器和分布式存储等基本操作系统的快速安装，功能包括KVM、Qemu、Docker、Ceph等，兼容X86、ARM和MIPS三种主流的指令集。

## 编译说明

### 环境要求

1. Debian10.5，做小化安装
2. sudo apt-get git
3. sudo apt-get install simple-cdd xorriso

### 源码说明

config
incloude
package
scripts
target
build.sh
Config.in
Makefile

### 编译步骤

1. chmod +x ./build.sh
2. ./build.sh

## 版本说明

VirtOS 版本号命名规则为：v大版本.功能版本.Bug修复版本。比如：

```
v1.0.1 是 v1.0.0 之后的Bug修复版本；
v1.1.0 是 v1.0.0 之后的功能版本。
```

## 功能组件

- 基础
  - [Debian](https://www.debian.org/) v10.5
  - [Kernel](https://www.kernel.org/)
  - [QEMU]
  - [docker](https://www.docker.com/) v19.03.9

- 存储
  - [CEPH]
  
- 网络
  - [OVS]
  
- 其他
  - [Spice]


### 下载
- https://virtos.org.cn


### 支持
微信：18615530227
邮箱：18615530227@163.com

## License

Copyright (c) 2020-2029 [VirtOS](http://virtos.org.cn)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
