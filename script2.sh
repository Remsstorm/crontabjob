#!/usr/bin/sh

function goodbyelogs {
find /var/log -type f
}

for i in return $(goodbyelogs);
do sudo cat /dev/null > $i;
echo "Log $i has been cleared";
done

function  byegz {
find /var/log -type f -regex ".*\.gz$" 
}


for i in return $(byegz);
do sudo cat /dev/null > $i;
echo "Log $i has been cleared";
done

function suricatalog {
find /var/log/suricata/fast.log -type f -regex ".*\.log$" 
}

for i in return $(suricatalog);
do sudo cat /dev/null > $i;
echo "Log $i has been cleared";
done



