# 服务器使用的常见问题
___
- [介绍](#introduction)
- [目录](#categories)
  - [基础环境搭建](./chapters/env/infrastructure.md)
  - [常用框架的编译与安装](./chapters/lib/lib.md)
  - [新系统安装相关] 
  - [注意事项]
  - [常见问题](#FQA)

# Introduction
这个仓库总结了实验室服务器基本环境安装的一些非常基础的操作，主要用于项目组内的内部讨论。首先，应该假设你已经位于某个项目组，并且已向管理员申请了账号。对于新来的用户，请参考[这里](./chapters/env/infrastructure.md)进行全程傻瓜式的基础环境配置。

!!!注意：请不要在容器外部直接使用apt安装软件，所有个人需要的环境、库请在自己的docker容器中安装，避免用户之间相互影响。


# FQA
1. 服务器重启后执行`ls /dev |grep nvidia`
   没有任何输出：
   
   卸载驱动并重新安装，最后执行`deviceQuery`程序即可。
2. 服务器输入`nvidia-smi`卡死：
   
   同上。 

3. 在容器里apt安装软件时出现`Download is performed unsandboxed as root as file '/var/cache/apt/archives/partial/less_487-0.1build1_amd64.deb' couldn't be accessed by user '_apt'. - pkgAcquire::Run (13: Permission denied)`:
    ```
    chmod -R 777 /var/cache
    ```
4. vncserver启动时出现`Warning: 5da00d91f37e:1 is taken because of /tmp/.X1-lock`:
   ```
   rm -r /tmp/.X1*
   ```

5. 进入桌面发现浏览器中文乱码:
   ```
   apt install fonts* -y
   ```