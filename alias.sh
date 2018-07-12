

#Personal alias for multiple purposes

# plugins git mvn adb

color_log() {
    clear
    if [ -z ${2} ]; then cat $1 | ccze -A; else cat $1 | ccze -A | grep $2; fi
}

get_database() {
    echo "adb -d shell \"run-as $1 rm /sdcard/$2\""
    echo "adb -d shell \"run-as $1 cp /data/data/$1/databases/$2 /sdcard/$2\""
    echo "adb pull /sdcard/$2"
}

alias update="sudo apt update && sudo apt dist-upgrade"
alias clean="sudo apt autoremove && sudo apt autoclean"
alias alias_edit="code ~/.zshrc"
alias profile_edit="code ~/.profile"
alias gh="gitk &"
alias gssu="git stash save --include-untracked"
alias adbi="adb install platforms/android/build/outputs/apk/debug/android-debug.apk"
alias adbu="adb uninstall"
alias clear_data="adb shell pm clear"
alias is="ionic serve --no-open"
alias icra="ionic cordova run android"
alias icral="ionic cordova run android -lsc --livereload-port 8101"
alias ira="ionic run android"
alias icea="ionic cordova emulate android"
alias icba="ionic cordova build android"
alias sav='env WINEPREFIX="/home/dvsilva/.wine" wine C:\\windows\\command\\start.exe /Unix /home/dvsilva/.wine/dosdevices/c:/ProgramData/Microsoft/Windows/Start\ Menu/Programs/Sav/Sav.lnk'
