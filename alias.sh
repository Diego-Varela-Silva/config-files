ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

plugins=(git mvn npm adb)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

colorLog() {
    # $1 log
    # $2 pattern (opcional)
    clear
    if [ -z ${2} ]; then cat $1 | ccze -A; else cat $1 | ccze -A | grep -i $2; fi
}

findInLogs() {
    # $1 log
    # $2 pattern
    grep -rnw $1 -e $2
}

getDatabase() {
    echo "adb -d shell \"run-as $1 rm /sdcard/$2\""
    echo "adb -d shell \"run-as $1 cp /data/data/$1/databases/$2 /sdcard/$2\""
    echo "adb pull /sdcard/$2"
}

alias update="sudo apt update && sudo apt dist-upgrade"
alias clean="sudo apt autoremove && sudo apt autoclean"
alias alias_edit="code ~/.zshrc"
alias profile_edit="code ~/.profile"
alias i3_edit="code ~/.config/i3/config"
alias gh="gitk &"
alias gstsu="git stash save --include-untracked"
alias adbi="adb install platforms/android/build/outputs/apk/debug/android-debug.apk"
alias adbi2="adb install platforms/android/app/build/outputs/apk/debug/app-debug.apk"
alias adbu="adb uninstall"
alias clear_data="adb shell pm clear"
alias is="ionic serve --no-open -c"
alias icral="ionic cordova run android -lcs --livereload-port 8101"
alias icra="ionic cordova run android"
alias ira="ionic run android"
alias icea="ionic cordova emulate android"
alias icba="ionic cordova build android"
alias sav='env WINEPREFIX="/home/dvsilva/.wine" wine C:\\windows\\command\\start.exe /Unix /home/dvsilva/.wine/dosdevices/c:/ProgramData/Microsoft/Windows/Start\ Menu/Programs/Sav/Sav.lnk'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"
