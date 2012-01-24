-- Subject to interpretation (11991)
UPDATE creature_template SET
AIName='EventAI'
where entry IN(26498,26559,26700,26789);

DELETE FROM creature_ai_scripts WHERE creature_id IN(26498,26559,26700,26789);
INSERT INTO creature_ai_scripts VALUES
(2649801,26498,8,0,100,1,47110,-1,0,0,12,26500,0,45000,41,0,0,0,0,0,0,0,'Drakurus Bunny 01-summon image of drakuru(26500) '),
(2655901,26559,8,0,100,1,47110,-1,0,0,12,26543,0,45000,41,0,0,0,0,0,0,0,'Drakurus Bunny 02-summon image of drakuru(26543) '),
(2670001,26700,8,0,100,1,47110,-1,0,0,12,26701,0,45000,41,0,0,0,0,0,0,0,'Drakurus Bunny 03-summon image of drakuru(26701) '),
(2678901,26789,8,0,100,1,47110,-1,0,0,12,26787,0,45000,41,0,0,0,0,0,0,0,'Drakurus Bunny 04-summon image of drakuru(26787) ');


DELETE from creature_template_addon where entry=26500;
INSERT into creature_template_addon (entry,auras) VALUES
(26500,'47119 0');


DELETE from creature_loot_template where item IN(35799,36743,36758);
INSERT into creature_loot_template VALUES
(26425,35799,50,0,1,1,2,35797,1),
(26447,35799,50,0,1,1,2,35797,1),
(26704,36743,50,0,1,1,2,35797,1),
(27554,36743,50,0,1,1,2,35797,1),
(26795,36758,33,0,1,1,2,35797,1),
(26797,36758,33,0,1,1,2,35797,1);


DELETE from spell_script_target where entry=47110;
INSERT into spell_script_target VALUES
(47110,1,26498),
(47110,1,26559),
(47110,1,26700),
(47110,1,26789);


DELETE from gossip_menu where entry=9426;
INSERT into gossip_menu (entry,text_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES
(9426,1, 9,12007 ,0);

DELETE from gossip_menu_option where menu_id=9426;
INSERT into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES
(9426,1,'I need eye of prophets',1,0,9426,9,12007 ,0);

DELETE from gossip_scripts where id=9426;
INSERT into gossip_scripts (id,delay,command,datalong,datalong2,comments) VALUES
(9426,0,15,47293,1,'Cast create eye of prophets');



DELETE from creature_questrelation where quest IN(12042,12068,12238);
INSERT into creature_questrelation VALUES
(26543,12042),
(26701,12068),
(26787,12238);


DELETE from creature_involvedrelation where quest IN(12007,12802,12068);
INSERT into creature_involvedrelation VALUES
(26543,12007),
(26701,12802),
(26787,12068);

UPDATE creature_template SET
npcflag=npcflag |2
where entry IN(26543,26701,26787);

UPDATE creature SET 
spawntimesecs=30
WHERE id IN(26498,26559,26700,26789);
