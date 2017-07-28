#!/bin/bash
# 获取坐标位置 /Applications/Genymotion.app/Contents/MacOS/tools/adb shell getevent | grep -e "0035" -e "0036"
# 转换为１０进制
while [ true ]; do
    # dps create team
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560 shell input tap 850 61
    sleep 1
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560 shell input tap 1086 675
    sleep 1

    # 更多按钮
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1600 80
    sleep 1
    # 好友按钮
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1500 480
    sleep 1
    # 好友第一人
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1200 250
    sleep 1
    # 申请组队
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 800 400
    sleep 1
    # 关闭好友
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1830 110
    sleep 1


    # 第三个技能
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1450 1000
    sleep 1
    # 第四个技能
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1550 1000
    sleep 3
    # 第六个技能
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1800 1000
    sleep 1


    # 组队按钮
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1327 144
    sleep 1
    # 离开队伍
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 200 1000
    sleep 1
    # 离开队伍确认
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1000 600
    sleep 1

    sleep 60
done
