DELETE from spell_script_target where entry=46017;
INSERT into spell_script_target VALUES
(46017,0,300177);

DELETE from event_scripts where id=17084;
INSERT into event_scripts (id,delay,command,datalong,datalong2,x,y,z,o,data_flags,comments ) VALUES
(17084,1,10,25794,10000,3500.58,4521.59,-13.31,3.74,0x01,"Summon Shake-n-Quake 5000 (quest11723)"),
(17084,1,8,25794,0,0,0,0,0,0,"Kill credit- Deploy the Shake-n-Quake 5000 (quest11723)"),
(17084,8,10,25629,30000,3480.77,4519.16,-20.73,6.21,0x01,"Summon Lord Kryxix (quest 11723)");

DELETE FROM gameobject WHERE id = '300177';
INSERT INTO gameobject (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(300177, 571, 1,1,3498.61, 4523.57, -13.4166, 4.18121, 0, 0, 0.867914, -0.496715, 25, 0, 1);

