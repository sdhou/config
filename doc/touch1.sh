while [ true ]; do
    /Applications/Genymotion.app/Contents/MacOS/tools/adb -s model:Google_Nexus_6___6_0_0___API_23___1440x2560 shell input tap 942 700
    sleep $1
done
