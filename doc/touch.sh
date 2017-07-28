while [ true ]; do
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1132 720
    sleep 3
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560_1 shell input tap 1200 720
    sleep $1
done
