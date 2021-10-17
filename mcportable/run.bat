@echo off

title MC Launcher by Aritz331_

echo mnecfiart idr scelte (Dev option. If you don't know what you're doing, type . and press Enter)
set /p mcdirp="> "

cls

echo mnecfiart umenares scelte (Translation: Minecraft username select)
set /p mcusernamep="> "

cls

echo mnecfiart svireno scelte (Translation: Minecraft version select)
cd %mcdirp%\files\versions
echo Versions: (you can also use TAB to select them)
echo.
dir /b /aD
echo.
set /p mcversionp="> "
cd %~dp0

cls

rem ##################

echo minecraft fullscreen or windowed?
echo.
echo [1] Fullscreen
echo [2] Windowed
echo.
choice /c 12 /n /m "> "

cls

if %errorlevel%==1 (goto smcfs)

echo mnecfiart res ghethi scelte (Translation: Minecraft resolution height select)
set /p mcheightp="> "

cls

echo mnecfiart res ghethi scelte (Translation: Minecraft resolution width select)
set /p mcwidthp="> "

cls

goto smcwdw

rem ##################

:smcfs
echo please wait minecraft is loading
timeout 5 /nobreak >nul

cls

start /wait %mcdirp%\mojang_jre\java-runtime-alpha\windows-x64\java-runtime-alpha\bin\javaw.exe -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -XX:ConcGCThreads=1 -XX:ParallelGCThreads=4 -Xmx2048M -Dfile.encoding=UTF-8 -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe_minecraft.exe.heapdump -Xss1M -Djava.library.path=%mcdirp%\files\versions\1.17.1\natives -Dminecraft.launcher.brand=java-minecraft-launcher -Dminecraft.launcher.version=1.6.84-j -cp %mcdirp%\files\libraries\com\mojang\blocklist\1.0.5\blocklist-1.0.5.jar;%mcdirp%\files\libraries\com\github\oshi\oshi-core\5.7.5\oshi-core-5.7.5.jar;%mcdirp%\files\libraries\net\java\dev\jna\jna\5.8.0\jna-5.8.0.jar;%mcdirp%\files\libraries\net\java\dev\jna\jna-platform\5.8.0\jna-platform-5.8.0.jar;%mcdirp%\files\libraries\org\slf4j\slf4j-api\1.8.0-beta4\slf4j-api-1.8.0-beta4.jar;%mcdirp%\files\libraries\org\apache\logging\log4j\log4j-slf4j18-impl\2.14.1\log4j-slf4j18-impl-2.14.1.jar;%mcdirp%\files\libraries\com\ibm\icu\icu4j\66.1\icu4j-66.1.jar;%mcdirp%\files\libraries\com\mojang\javabridge\1.1.23\javabridge-1.1.23.jar;%mcdirp%\files\libraries\net\sf\jopt-simple\jopt-simple\5.0.3\jopt-simple-5.0.3.jar;%mcdirp%\files\libraries\io\netty\netty-all\4.1.25.Final\netty-all-4.1.25.Final.jar;%mcdirp%\files\libraries\com\google\guava\guava\21.0\guava-21.0.jar;%mcdirp%\files\libraries\org\apache\commons\commons-lang3\3.5\commons-lang3-3.5.jar;%mcdirp%\files\libraries\commons-io\commons-io\2.5\commons-io-2.5.jar;%mcdirp%\files\libraries\commons-codec\commons-codec\1.10\commons-codec-1.10.jar;%mcdirp%\files\libraries\net\java\jinput\jinput\2.0.5\jinput-2.0.5.jar;%mcdirp%\files\libraries\net\java\jutils\jutils\1.0.0\jutils-1.0.0.jar;%mcdirp%\files\libraries\com\mojang\brigadier\1.0.18\brigadier-1.0.18.jar;%mcdirp%\files\libraries\com\mojang\datafixerupper\4.0.26\datafixerupper-4.0.26.jar;%mcdirp%\files\libraries\com\google\code\gson\gson\2.8.0\gson-2.8.0.jar;%mcdirp%\files\libraries\org\apache\commons\commons-compress\1.8.1\commons-compress-1.8.1.jar;%mcdirp%\files\libraries\org\apache\httpcomponents\httpclient\4.3.3\httpclient-4.3.3.jar;%mcdirp%\files\libraries\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar;%mcdirp%\files\libraries\org\apache\httpcomponents\httpcore\4.3.2\httpcore-4.3.2.jar;%mcdirp%\files\libraries\it\unimi\dsi\fastutil\8.2.1\fastutil-8.2.1.jar;%mcdirp%\files\libraries\org\apache\logging\log4j\log4j-api\2.14.1\log4j-api-2.14.1.jar;%mcdirp%\files\libraries\org\apache\logging\log4j\log4j-core\2.14.1\log4j-core-2.14.1.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl\3.2.2\lwjgl-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-jemalloc\3.2.2\lwjgl-jemalloc-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-openal\3.2.2\lwjgl-openal-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-opengl\3.2.2\lwjgl-opengl-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-glfw\3.2.2\lwjgl-glfw-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-stb\3.2.2\lwjgl-stb-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-tinyfd\3.2.2\lwjgl-tinyfd-3.2.2.jar;%mcdirp%\files\libraries\com\mojang\text2speech\1.11.3\text2speech-1.11.3.jar;%mcdirp%\files\libraries\by\ely\authlib\2.2.30.2\authlib-2.2.30.2.jar;%mcdirp%\files\versions\1.17.1\1.17.1.jar net.minecraft.client.main.Main --username %mcusernamep% --version %mcversionp% --gameDir %mcdirp%\files --assetsDir %mcdirp%\files\assets --assetIndex 1.17 --uuid f878090c42dc3ff0b26f4ab19e0244d4 --accessToken f878090c42dc3ff0b26f4ab19e0244d4 --userType legacy --versionType release --fullscreen

exit

:smcwdw
echo please wait minecraft is loading
timeout 5 /nobreak >nul

cls

start /wait %mcdirp%\mojang_jre\java-runtime-alpha\windows-x64\java-runtime-alpha\bin\javaw.exe -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -XX:ConcGCThreads=1 -XX:ParallelGCThreads=4 -Xmx2048M -Dfile.encoding=UTF-8 -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe_minecraft.exe.heapdump -Xss1M -Djava.library.path=%mcdirp%\files\versions\1.17.1\natives -Dminecraft.launcher.brand=java-minecraft-launcher -Dminecraft.launcher.version=1.6.84-j -cp %mcdirp%\files\libraries\com\mojang\blocklist\1.0.5\blocklist-1.0.5.jar;%mcdirp%\files\libraries\com\github\oshi\oshi-core\5.7.5\oshi-core-5.7.5.jar;%mcdirp%\files\libraries\net\java\dev\jna\jna\5.8.0\jna-5.8.0.jar;%mcdirp%\files\libraries\net\java\dev\jna\jna-platform\5.8.0\jna-platform-5.8.0.jar;%mcdirp%\files\libraries\org\slf4j\slf4j-api\1.8.0-beta4\slf4j-api-1.8.0-beta4.jar;%mcdirp%\files\libraries\org\apache\logging\log4j\log4j-slf4j18-impl\2.14.1\log4j-slf4j18-impl-2.14.1.jar;%mcdirp%\files\libraries\com\ibm\icu\icu4j\66.1\icu4j-66.1.jar;%mcdirp%\files\libraries\com\mojang\javabridge\1.1.23\javabridge-1.1.23.jar;%mcdirp%\files\libraries\net\sf\jopt-simple\jopt-simple\5.0.3\jopt-simple-5.0.3.jar;%mcdirp%\files\libraries\io\netty\netty-all\4.1.25.Final\netty-all-4.1.25.Final.jar;%mcdirp%\files\libraries\com\google\guava\guava\21.0\guava-21.0.jar;%mcdirp%\files\libraries\org\apache\commons\commons-lang3\3.5\commons-lang3-3.5.jar;%mcdirp%\files\libraries\commons-io\commons-io\2.5\commons-io-2.5.jar;%mcdirp%\files\libraries\commons-codec\commons-codec\1.10\commons-codec-1.10.jar;%mcdirp%\files\libraries\net\java\jinput\jinput\2.0.5\jinput-2.0.5.jar;%mcdirp%\files\libraries\net\java\jutils\jutils\1.0.0\jutils-1.0.0.jar;%mcdirp%\files\libraries\com\mojang\brigadier\1.0.18\brigadier-1.0.18.jar;%mcdirp%\files\libraries\com\mojang\datafixerupper\4.0.26\datafixerupper-4.0.26.jar;%mcdirp%\files\libraries\com\google\code\gson\gson\2.8.0\gson-2.8.0.jar;%mcdirp%\files\libraries\org\apache\commons\commons-compress\1.8.1\commons-compress-1.8.1.jar;%mcdirp%\files\libraries\org\apache\httpcomponents\httpclient\4.3.3\httpclient-4.3.3.jar;%mcdirp%\files\libraries\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar;%mcdirp%\files\libraries\org\apache\httpcomponents\httpcore\4.3.2\httpcore-4.3.2.jar;%mcdirp%\files\libraries\it\unimi\dsi\fastutil\8.2.1\fastutil-8.2.1.jar;%mcdirp%\files\libraries\org\apache\logging\log4j\log4j-api\2.14.1\log4j-api-2.14.1.jar;%mcdirp%\files\libraries\org\apache\logging\log4j\log4j-core\2.14.1\log4j-core-2.14.1.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl\3.2.2\lwjgl-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-jemalloc\3.2.2\lwjgl-jemalloc-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-openal\3.2.2\lwjgl-openal-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-opengl\3.2.2\lwjgl-opengl-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-glfw\3.2.2\lwjgl-glfw-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-stb\3.2.2\lwjgl-stb-3.2.2.jar;%mcdirp%\files\libraries\org\lwjgl\lwjgl-tinyfd\3.2.2\lwjgl-tinyfd-3.2.2.jar;%mcdirp%\files\libraries\com\mojang\text2speech\1.11.3\text2speech-1.11.3.jar;%mcdirp%\files\libraries\by\ely\authlib\2.2.30.2\authlib-2.2.30.2.jar;%mcdirp%\files\versions\1.17.1\1.17.1.jar net.minecraft.client.main.Main --username %mcusernamep% --version %mcversionp% --gameDir %mcdirp%\files --assetsDir %mcdirp%\files\assets --assetIndex 1.17 --uuid f878090c42dc3ff0b26f4ab19e0244d4 --accessToken f878090c42dc3ff0b26f4ab19e0244d4 --userType legacy --versionType release --height %mcheightp% --width %mcwidthp%