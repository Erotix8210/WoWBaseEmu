#!/bin/bash
MANGOSHOST=127.0.0.1
MANGOSUSER=mangos
MANGOSPASS=password
cd /home/MaNGOS/backup/
DATE=`date +%Y%m%d-%H%M`;
mkdir $DATE;
cd $DATE;
mysqldump --user=MANGOSUSER --password=MANGOSPASS -h MANGOSHOST mangos > mangos_world.sql;
mysqldump --user=MANGOSUSER --password=MANGOSPASS -h MANGOSHOST characters > mangos_characters.sql;
mysqldump --user=MANGOSUSER --password=MANGOSPASS -h MANGOSHOST scriptdev2 > mangos_scriptdev2.sql;
mysqldump --user=MANGOSUSER --password=MANGOSPASS -h MANGOSHOST realmd > mangos_realmd.sql;
gzip mangos_world.sql --best;
gzip mangos_characters.sql --best;
gzip mangos_scriptdev2.sql --best;
gzip mangos_realmd.sql --best;
