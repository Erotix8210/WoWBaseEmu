UPDATE creature_addon SET
auras='48814 0'
where guid IN (SELECT guid FROM `creature` WHERE id IN ( 27229, 27224, 27226, 27225 ) );

DELETE from spell_scripts where id=48810;
INSERT into spell_scripts (id,delay,command,datalong,datalong2,comments) VALUES
(48810,0,15,48809,3,'');

UPDATE creature_template SET
gossip_menu_id=entry
where entry IN(27229,27224,27226,27225);


DELETE from npc_text where ID IN(27229,27224,27226);
INSERT into npc_text (ID,text0_0) VALUES
(27229,'Arthas and Muradin have been gone a long time. I hope they aren\'t in danger.'),
(27224,'Rage. That\'s how I can sum up my feelings towards this whole mess. We worked our fingers to the bone trying to get through the woods to the shore only to find that we were too late. Our only way home had been destroyed.'),
(27226,'If it weren\'t for those damned beasts burning our ships, we\'d have been home by now. Now leave me alone so I can get back to work!'); 

DELETE from gossip_menu where entry IN(27229,27224,27226,27225);
INSERT into gossip_menu (entry, text_id,cond_1,cond_1_val_1) VALUES
(27225, 12858, 9, 12291),
(27224, 27224, 9, 12291),
(27226, 27226, 9, 12291),
(27229, 27229, 9, 12291);

DELETE FROM gossip_menu_option WHERE menu_id IN(27229,27224,27226,27225);
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1) VALUES
(27229,1,0,'I\'m sure everything will work out, footman.',1,1,0,27229,0,0),  
(27225,1,0,'I\'m sure Arthas will be back any day now, soldier. Keep your chin up! ',1,1,0,27225,0,0),  
(27224,1,0,'I must be going now, soldier. Stay vigilant! ',1,1,0,27224,0,0),  
(27226,1,0,'Sorry to have bothered you, friend. Carry on! ',1,1,0,27226,0,0);

DELETE FROM gossip_scripts WHERE id IN(27229,27224,27226,27225); 
INSERT INTO gossip_scripts (id, delay, command, datalong, datalong2, dataint,comments) VALUES 
(27229, 0, 8, 27474, 0, 0,''),
(27224, 0, 8, 27473, 0, 0,''),
(27226, 0, 8, 27472, 0, 0,''),
(27225, 0, 8, 27471, 0, 0,'');
