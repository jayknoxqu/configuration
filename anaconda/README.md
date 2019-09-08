

## Anaconda 镜像使用帮助

### 一、简介

**Anaconda** 是一个用于科学计算的 Python 发行版，支持 Linux, Mac, Windows, 包含了众多流行的科学计算、数据分析的 Python 包。

**Miniconda** 是一个 Anaconda 的轻量级替代，默认只包含了 python 和 conda，但是可以通过 pip 和 conda 来安装所需要的包。



### 二、下载地址

**Anaconda** 安装包可以在 https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive 下载。

**Miniconda** 安装包可以在https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda 下载



### 三、使用国内镜像

TUNA 还提供了 Anaconda 仓库与第三方源（conda-forge、msys2、pytorch等，[查看完整列表](https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/)）的镜像，可以通过以下两种方法之一修改镜像源



#### 1、修改配置

修改用户目录下的`.condarc`文件:

```
channels:
  - defaults
show_channel_urls: true
default_channels:
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/r
custom_channels:
  conda-forge: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  msys2: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  bioconda: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  menpo: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  pytorch: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
```





#### 2、使用命令

##### 添加USTC仓库镜像：

```
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/r
conda config --set show_channel_urls yes
```

##### Conda 附加库:

- **Conda Forge**

  ```
  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge
  ```

- **msys2**

  ```
  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/msys2
  ```

- **bioconda**

  ```
  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda
  ```

- **menpo**

  ```
  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/menpo
  ```

- **pytorch**

  ```
  conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch
  ```

  



运行 `conda install numpy` 测试一下吧。

