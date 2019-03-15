# 常用的库的编译与安装
___
- [目录]
  - [pytorch](#pytorch)
  - [tensorflow](#tensorflow)
  - [caffe](#caffe)

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