
## 清理Maven本地仓库.lastUpdated文件



### 原因

 使用maven下载项目依赖的jar包时，很容易因为各种原因(网速慢、断网)导致jar包下载失败，出现很多xxx.jar.lastUpdated的文件，无法正常启动项目，需要及时清理。



### 脚本



#### Windows 

执行`cleanLastUpdated.bat  ~/.m2/repository`，其中"~/.m2/repository"目录为Maven本地仓库路径

```
@echo off

set REPOSITORY_PATH=%1

if "%REPOSITORY_PATH%" == "" (
    echo "Usage: %0 <maven_repository_path>"
    echo "Example: %0 ~/.m2/repository"
    echo "Explain: "~" is your profile's home directory" 
    echo. 
    echo. 
    echo "press enter to quit!" & pause > nul 
    goto :eof
)

echo. 
echo "Began clean lastUpdated file"
echo. 

for /f "delims=" %%i in ('dir /b /s "%REPOSITORY_PATH%\*lastUpdated*"') do (
   del /s /q %%i
)

echo. 
echo "End clean lastUpdated file."
echo. 
echo. 
echo "press enter to exit!" & pause > nul 

exit
```



#### Linux

执行`./cleanLastUpdated.sh  ~/.m2/repository`，其中"~/.m2/repository"目录为Maven本地仓库路径

```bash
#!/bin/bash

REPOSITORY_PATH=$1

if [ "$REPOSITORY_PATH" = "" ]; then

    echo "Usage: $0 <maven_repository_path>"
    echo "Example: $0 ~/.m2/repository"
    echo "Explain: "~" is your profile's home directory"
    
    exit 1
fi

echo "Began clean lastUpdated file"

for f in `find $REPOSITORY_PATH -name "*lastUpdated*"`
    do
        echo $f & rm $f
    done

echo "End clean lastUpdated file."
```

