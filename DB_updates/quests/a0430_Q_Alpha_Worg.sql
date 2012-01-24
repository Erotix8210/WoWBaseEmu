-- Support for quest Alpha Worg (11324)

DELETE FROM gossip_scripts WHERE id=8975;
INSERT INTO gossip_scripts (id, delay, command, datalong, datalong2, dataint, comments) VALUES
(8975,0,15,43060,2,0, 0);
  
DELETE FROM gossip_menu_option WHERE menu_id=8975;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES
(8975,0,0,'Let me see Garwal once again',2,2,0,8975,9,11324,0);
      
 
 DELETE FROM quest_start_scripts WHERE id=11324;
INSERT INTO quest_start_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, data_flags, dataint, X, Y, z, o, comments)VALUES
('11324','0', '15', '43060', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0');
 
DELETE FROM quest_end_scripts WHERE id=11324;
INSERT INTO quest_end_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, data_flags, dataint, X, Y, z, o,comments)VALUES
('11324','0', '14', '43060', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0');
  
 
UPDATE quest_template SET StartScript ='11324',CompleteScript='11324' WHERE entry = 11324;

      
 SET @guid = (SELECT guid FROM creature WHERE id = 24277);
DELETE FROM creature_movement WHERE id = @guid;
INSERT INTO`creature_movement`(`id`,`POINT`,`position_x`,`position_y`,`position_z`,`waittime`)VALUES
      (@guid,1,2524.52,-3188.43,142.97,3000),
      (@guid,2,2621.93,-3166.33,137.43,3000),
      (@guid,3,2724.82,-3059.31,104.60,3000),
      (@guid,4,2674.85,-2973.50,93.45,3000),
      (@guid,5,2542.90,-2994.23,112.39,3000),
      (@guid,6,2524.52,-3188.43,142.97,3000),
      (@guid,7,2468.36,-2997.08,125.71,3000),
      (@guid,8,2524.52,-3188.43,142.97,3000),
      (@guid,9,2454.36,-3094.38,142.64,3000),
      (@guid,10,2524.52,-3188.43,142.97,3000);
