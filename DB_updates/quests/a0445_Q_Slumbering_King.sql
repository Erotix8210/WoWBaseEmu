-- Support for Quest "Slumbering King" (11453,11452) - Howling Fjord

-- Add NPC King Ymiron (29393)
DELETE FROM creature WHERE id=29393;
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType)
VALUES (29393,571,1,1,28019,0,2849.64,-3861.96,248.53,5.409039,180,0,0,13945,0,0,0);

UPDATE `creature_template` SET unit_flags = unit_flags |256 WHERE entry=29393;
UPDATE `creature_template` SET minhealth=13945,maxhealth=13945 WHERE entry=29393;

-- Add NPC Queen Angerboda (24023)
DELETE FROM creature WHERE id=24023;
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType)
VALUES (24023,571,1,1,25941,777,2855.73,-3869.78,248.53,2.14147,180,0,0,13945,0,0,0);
UPDATE `creature_template` SET faction_A=1885, faction_H=1885, armor=7007, mindmg=296, maxdmg=424, attackpower=290, minrangedmg=260, maxrangedmg=387, rangedattackpower=37 WHERE entry=24023;

-- Add event for Queen Angeborda (24023) 
UPDATE creature_template SET AIName='EventAI' WHERE entry=24023;

-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-240231,-240232,-240233,-240234,-240235,-240236,-240237,-240238,-240239,-240230);
INSERT INTO creature_ai_texts VALUES
(-240231,'Double your efforts! King Ymiron will awaken and then he will ascend!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angerboda Yell1'),
(-240232,'Why is this ritual taking so long? Your master promised that your assistance would speed the process!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angerboda Yell2'),
(-240233,'The ritual proceeds too slowly. More sacrifices are needed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angeborda Yell3'),
(-240234,'The time has come for my husband, our king, to rejoin us. Together we will scour this world of its unworthy infestation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angerboda Yell4'),
(-240235,'Sleep no longer, my love. With the might of the Lich King behind you, the world will tremble.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angerboda Yell5'),
(-240236,'Damn the titans for cursing us so! Ymiron, my king, open your eyes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angerboda Yell6'),
(-240237,'Soon, my love. Soon you will waken and all of Azeroth will know fear!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angerboda Yell7'),
(-240238,'Awaken, Ymiron, the time of your continued reign is nigh.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angerboda Yell8'),
(-240239,'Give me your souls that I might slay the enemy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angerboda Yell9'),
(-240230,'You will not stop my work here! My husband-king will awaken!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Queen Angeborda Yell10');

-- EventAi

DELETE FROM creature_ai_scripts WHERE id IN (2402300,2402301,2402302,2402303,2402304,2402305,2402306);
INSERT INTO creature_ai_scripts VALUES
(2402300,24023,1,0,100,1,1000,1000,30000,30000,1,-240231,-240232,-240233,0,0,0,0,0,0,0,0,'Queen Angerboda - Say and Prevent Combat Movement'),
(2402301,24023,1,0,100,1,11000,9000,30000,30000,1,-240234,-240235,-240236,0,0,0,0,0,0,0,0,'Queen Angerboda - Say and Prevent Combat Movement'),
(2402302,24023,1,0,100,1,21000,17000,30000,30000,1,-240237,-240238,0,0,0,0,0,0,0,0,0,'Queen Angerboda - Say and Prevent Combat Movement'),
(2402303,24023,4,0,100,0,0,0,0,0,11,43560,1,0,0,0,0,0,1,-240238,0,0,'Queen Angerboda - Cast Anger of Gjalerborn and Yell on Aggro'),
(2402304,24023,0,0,100,1,1000,1000,15000,15000,11,11831,1,0,0,0,0,0,0,0,0,0,'Queen Angerboda - Cast Frost Nova'),
(2402305,24023,0,0,100,1,3000,3000,5000,5000,11,9053,1,0,0,0,0,0,0,0,0,0,'Queen Angerboda - Cast Fireball'),
(2402306,24023,6,0,100,0,0,0,0,0,1,-240230,0,0,32,29394,0,29394,0,0,0,0,'Queen Angerboda - Yell and summon Lich King on Death');

-- Lich King Summon
DELETE FROM creature_ai_summons WHERE id=29394;
INSERT INTO creature_ai_summons VALUES
(29394,2848.68,-3869.9,248.52,1.358477,30000,'Lich King Spawn The Slumbering King');

-- Add event for Lich King Summon (29394) 
UPDATE creature_template SET AIName='EventAI' WHERE entry=29394;

-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-293941,-293942);
INSERT INTO creature_ai_texts VALUES
(-293941,'Not yet, Ymiron. I have other plans for you. You will serve me better within Utgarde Pinnacle.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Lich King Yell1'),
(-293942,'And if these insects survive to find you again, you will get the chance to avenge your wife.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Lich King Yell2');

-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2939401,2939402,2939403);
INSERT INTO creature_ai_scripts VALUES
(2939401,29394,1,0,100,0,3000,3000,0,0,1,-293941,0,0,0,0,0,0,0,0,0,0,'Lich King Yell1 to Ymiron'),
(2939402,29394,1,0,100,0,13000,13000,0,0,1,-293942,0,0,0,0,0,0,0,0,0,0,'Lich King Yell2 to Ymiron'),
(2939403,29394,1,0,100,0,23000,23000,0,0,11,48307,0,0,0,0,0,0,0,0,0,0,'Lich King cast spell on Ymiron and despawn');