-- support for quest 11631 Vision of Air (by Tank)
-- add trigger fo quest item
DELETE FROM `gameobject` WHERE `id`=300172;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES (3458888,300172,571,1,1,4526.36,5674.26,82.1013,3.45575,0,0,0.651642,0.758527,25,0,1);

-- set up the primal to summon Visions
DELETE FROM `event_scripts` WHERE `id`=16716;
INSERT INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`datalong4`, `data_flags`,`dataint`,`x`,`y`,`z`,`o`,`comments`) VALUES 
(16716,1,10,25456,14000,0,0,0,0,4520.666504,5668.187012,81.394676,5.810356,'summon Vision of Kaganishu'),
(16716,1,10,25424, 4000,0,0,0,0,4522.666504,5666.825684,80.986732,2.520321,'summon Vision of Farseer Grimwalker'),
(16716,3,0,1, 25424,10,0,0x02,2000008500,0,0,0,0,'yell of Vision of Farseer Grimwalker'),
(16716,6,0,0, 25456,10,0,0x02,2000008501,0,0,0,0,'talk of Vision of Kaganishu'),
(16716,7,10,25458, 18000,0,0,0,0,4522.666504,5666.825684,80.986732,2.520321,'summon Vision of Spirit of Farseer Grimwalker'),
(16716,10,0,1, 25456,10,0,0x02,2000008502,0,0,0,0,'yell of Vision of Kaganishu'),
(16716,17,0,0, 25458,50,0,0x02,2000008503,0,0,0,0,'talk of Vision of Spirit of Farseer Grimwalker'),
(16716,21,0,1, 25458,50,0,0x02,2000008504,0,0,0,0,'yell of Vision of Spirit of Farseer Grimwalker'),
(16716,25,8,25456,1,0,0,0,0,4520.666504,5668.187012,81.394676,1.386089,'kill credit for Vision of Kaganishu');

-- texts 
DELETE FROM db_script_string WHERE entry BETWEEN 2000008500 AND 2000008504;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000008500,'No! I will not let you posses my spirit!'), -- Farseer Grimwalker
(2000008501,'Your soul is already mine.'), -- Kaganishu 1
(2000008502,'KAGANISHU!'), -- Kaganishu 2
(2000008503,'Help me, friend. You have to seek deep in the caverns of Magmoth.'), -- Spirit of Farseer Grimwalker
(2000008504,'Hurry up, there is no time!'); -- Spirit of Farseer Grimwalker