-- support for Test at Sea - quest 11170 

-- kill credit on spell hit
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 24120;
insert  into `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) 
values (77770232,24120,8,0,100,1,43115,-1,25000,25000,33,24121,6,0,37,0,0,0,0,0,0,0,'North Fleet Reservist Credit - q11170');

-- gossip & taxi
UPDATE creature_template SET gossip_menu_id=8894 WHERE entry=23816;

DELETE FROM gossip_menu WHERE entry=8894;
INSERT INTO gossip_menu VALUES
(8894,11662,9,11170,0,0,0,0);

DELETE FROM gossip_scripts WHERE id=8894;
INSERT INTO gossip_scripts (id, delay, command, datalong, datalong2, dataint, comments) VALUES
(8894,0,15,43136,2,0, 'Test at Sea Taxi');

DELETE FROM gossip_menu_option WHERE menu_id=8894;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES
(8894,0,0,'Send me at Frozen Sea',1,1,0,8894,9,11170,0);

-- add kill credit
DELETE FROM creature WHERE `id`= 24121;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(24121,571,1,1,0,0,781.825012,-6822.02002,16.2822,5.0476,120,0,0,1,1,0,0);

-- set flags for kill credit & EAI 
UPDATE creature_template SET unit_flags = unit_flags |512 |256 |33554432 WHERE entry = 24121;  
UPDATE creature_template SET AIName='EventAI' WHERE entry = 24120;