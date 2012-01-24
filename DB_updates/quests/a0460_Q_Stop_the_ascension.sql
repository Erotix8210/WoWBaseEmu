-- Support for quest Stop the Ascension! (11249-Alliance,11260-Horde)

-- set up the Vrykul Scroll of Ascension to summon Halfdan the Ice-Hearted
DELETE FROM `event_scripts` WHERE `id`=15672;
INSERT INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`x`,`y`,`z`,`o`,comments) VALUES
(15672,0,10,23671,300000,1677.48,-4113.37,272.0182,0.138888,'Quest Stop the Ascension!');

-- Event AI and small changes for Halfdan the Ice-Hearted
UPDATE `creature_template`SET `minlevel`=72,`AIName`= 'EventAI' WHERE `entry`=23671;

-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-236711,-236712);
INSERT INTO creature_ai_texts VALUES
(-236711,'You think I do not know what you are trying to do? You think I haven\'t been watching you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Halfdan the Ice-Hearted Yell1'),
(-236712,'You will not stop my ascension, tiny $R. Time to die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Halfdan the Ice-Hearted Yell2');

-- Event AI
DELETE FROM `creature_ai_scripts`WHERE `creature_id`=23671;
INSERT INTO `creature_ai_scripts`VALUES
(2367100,23671,11,0,100,0,0,0,0,0,1,-236711,0,0,32,24118,0,241180,32,24118,0,241181,'Halfdan the Ice-Hearte Yell1 and summons two Val\'kyr Observers on Spawn'),
(2367101,23671,4,0,100,0,0,0,0,0,11,19131,1,1,0,0,0,0,0,0,0,0,'Halfdan the Ice-Hearte casts Shield Charge on Aggro'),
(2367102,23671,2,0,100,0,30,1,0,0,11,8599,1,0,1,-236712,0,0,0,0,0,0,'Halfdan the Ice-Hearte Yell2 and casts Enrage between 30% and 1% HP'),
(2367103,23671,0,0,100,1,5000,5000,20000,20000,11,32736,1,1,0,0,0,0,0,0,0,0,'Halfdan the Ice-Hearte casts Mortal Strike'),
(2367104,23671,0,0,100,1,10000,10000,20000,20000,11,32015,1,1,0,0,0,0,0,0,0,0,'Halfdan the Ice-Hearte casts Knockdown'),
(2367105,23671,0,0,100,1,14000,14000,20000,20000,11,12169,1,1,0,0,0,0,0,0,0,0,'Halfdan the Ice-Hearte casts Shield Block');

-- Val\'kyr Observers Summon
DELETE FROM creature_ai_summons WHERE id IN (241180,241181);
INSERT INTO creature_ai_summons VALUES
(241180,1671.472,-4126.33,276.472,0.248665,120000,'Val\'kyr Observer 1 Summon Stop the Ascension!'),
(241181,1667.771,-4106.15,276.883,0.331133,120000,'Val\'kyr Observer 2 Summon Stop the Ascension!');

UPDATE `creature_template`SET `unit_flags`= unit_flags |32768,InhabitType=5 WHERE `entry`=24118;

DELETE FROM `creature_template_addon`WHERE `entry`=24118;
INSERT INTO `creature_template_addon`(entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras)VALUES
(24118,0,33554432,1,0,0,0,NULL);