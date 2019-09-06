
## 修改maven仓库地址，加速项目构建



### 简介

[Maven](https://www.runoob.com/maven/maven-tutorial.html)用于项目管理及自动构建，默认的官方镜像地址在国外，因此下载依赖包的速度较慢，修改其仓库地址为国内可以达到加速构建的效果。



### 配置

修改maven安装目录下的 `conf/settings.xml` 文件，在<mirrors></mirrors>标签内添加如下内容：

```xml
<mirror>
    <id>nexus-aliyun</id>
    <mirrorOf>central</mirrorOf>
    <name>Nexus aliyun</name>
    <url>http://maven.aliyun.com/nexus/content/groups/public</url>
</mirror>
```


