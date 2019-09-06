## 修改gradle配置，加速项目构建



### 简介

[Gradle](https://link.jianshu.com/?t=https://gradle.org/#close-notification)是一个基于Apache Ant和Apache Maven概念的项目自动化建构工具。一种**依赖管理工具**，面向Java应用为主，它抛弃了基于XML的各种繁琐配置，取而代之的是一种基于Groovy的内部领域特定（DSL）语言。 **用于自动化构建、测试、发布打包**



### 配置

#### 一、修改构建属性

- 在用户根目录下的`.gradle`文件夹里新增`gradle.properties`属性配置文件。添加如下内容：

```properties
# 使用gradle守护进程,提高Gradle的启动时间和执行时间
org.gradle.daemon=true

# 增加gradle运行的java虚拟机的大小
org.gradle.jvmargs=-Xmx2048m -XX:MaxPermSize=512m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8

# 模块化项目和并行化编译
org.gradle.parallel=true

# 开启configuration on demand
org.gradle.configureondemand=true

# 配置构建缓存
org.gradle.caching=true
```

[官方文档]: http://www.gradle.org/docs/current/userguide/build_environment.html





#### 二、配置国内镜像

- 配置阿里maven仓库,增加依赖包的下载速度
- 在用户根目录下的`.gradle`文件夹里新增`init.gradle`初始化配置文件。添加如下内容：

```groovy
allprojects{
    repositories {
        def REPOSITORY_URL = 'http://maven.aliyun.com/nexus/content/groups/public/'
        all { ArtifactRepository repo ->
            def url = repo.url.toString()
            if ((repo instanceof MavenArtifactRepository) && (url.startsWith('https://repo1.maven.org/maven2') || url.startsWith('https://jcenter.bintray.com'))) {
                project.logger.lifecycle 'Repository ${repo.url} replaced by $REPOSITORY_URL .'
                remove repo
            }
        }
        maven {
            url REPOSITORY_URL
        }
    }
}
```

