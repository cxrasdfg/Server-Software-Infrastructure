# 常用的库的编译与安装
___
- [目录]
  - [pytorch](#pytorch)
  - [tensorflow](#tensorflow)
  - [caffe](#caffe)
  - [jupyter](#jupyter)

# pytorch
  ```
  pip3 install torch torchcv
  ```
# tensorflow
  ```
  pip3 install tensorflow-gpu
  ```
# caffe
  安装caffe的奥义在于，你应该把所有的库全部手动编译安装: 包括并不限于
  `glog gflags protobuf leveldb snappy  boost`。注意`protobuf` checkout到3.1版本，3.6会有兼容问题。安装`gflags`与
`leveldb`,`snappy`的时候注意选择为动态链接库。`boost`请用1.58...

# jupyter
  - 1. 安装
        使用pip:
        ```
        pip install jupyter 
        ```
        使用apt安装:
        ```
        apt install jupyter-notebook
        ```
  - 2. 使用
       
       非root权限后台挂载
        ```
        nohup jupyter notebook --ip=0.0.0.0 --port=your_port > jupyter_output 2>&1 & 
        ```
    
        root权限下:

        ```
        nohup jupyter notebook --ip=0.0.0.0  --port=your_port --allow-root ./ > jupyter_output 2>&1 & 
        ```
        使用`tail -f jupyter_output`查看token密码。`--ip=0.0.0.0`会绑定所有的ip，适合多ip访问，也可指定一个本机ip，如`127.0.0.1`。`your_port`改为需要的端口即可。
  - 3. 启动并查看token后，在浏览器输入`ip:端口号`即可使用jupyter notebook。
 


