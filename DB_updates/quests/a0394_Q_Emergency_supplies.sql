DELETE FROM gossip_menu WHERE entry=25841;
INSERT INTO gossip_menu (entry,text_id) VALUES
(25841,12489);

DELETE FROM gossip_scripts WHERE id=21248;
INSERT INTO gossip_scripts (id, delay, command, datalong, datalong2, dataint) VALUES
(21248,0,15,46362,2,0);


DELETE FROM gossip_menu_option WHERE menu_id=21248;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES
(25841,2,0,'Search the body for the pilot emergency toolkit.',1,1,0,21248,9,11887,0);
 
UPDATE creature_template SET gossip_menu_id=25841 WHERE entry=25841;