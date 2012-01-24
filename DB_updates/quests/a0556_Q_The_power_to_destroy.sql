-- Fix for quest The Power to Destroy (by Bastek)
UPDATE creature_template SET minlevel = 72, maxlevel = 73, minhealth = 9610, maxhealth = 9940, minmana = 3309, maxmana = 3387, mindmg = 900, maxdmg = 1100, faction_A = 16, faction_H = 16 WHERE entry = 26966;
UPDATE creature_template SET gossip_menu_id = 27324 WHERE entry = 26581;
UPDATE quest_template SET SrcSpell = 47740 WHERE entry = 12132;
DELETE FROM creature WHERE id = 26966;
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(26966, 571, 1, 32, 0, 0, 3885.831, 1598.750, 90.924, 1.69, 180, 5, 0, 1, 0, 0, 0),
(26966, 571, 1, 32, 0, 0, 3830.287, 1569.202, 86.699, 1.57, 180, 5, 0, 1, 0, 0, 0),
(26966, 571, 1, 32, 0, 0, 3765.248, 1616.664, 87.477, 1.21, 180, 5, 0, 1, 0, 0, 0),
(26966, 571, 1, 32, 0, 0, 3788.853, 1527.397, 87.577, 3.54, 180, 5, 0, 1, 0, 0, 0),
(26966, 571, 1, 32, 0, 0, 3835.312, 1496.283, 91.718, 2.24, 180, 5, 0, 1, 0, 0, 0),
(26966, 571, 1, 32, 0, 0, 3789.757, 1645.961, 98.745, 3.88, 180, 5, 0, 1, 0, 0, 0),
(26966, 571, 1, 32, 0, 0, 3867.134, 1618.302, 90.574, 4.20, 180, 5, 0, 1, 0, 0, 0),
(26966, 571, 1, 32, 0, 0, 3868.271, 1530.902, 89.898, 4.06, 180, 5, 0, 1, 0, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 27324;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, cond_1, cond_1_val_1, cond_1_val_2) VALUES
(27324, 1, 0, 'GOSSIP_OPTION_QUESTGIVER', 2, 2, 0, 0, 0, 0, 0),
(27324, 2, 0, 'I should return to the world of shades, Koltira. Send me back.', 1, 1, 27324, 27324, 9, 12132, 0);
DELETE FROM gossip_scripts WHERE id = 27324;
INSERT INTO gossip_scripts (id, delay, command, datalong, datalong2, comments) VALUES
(27324, 0, 15, 47740, 0, 'World of Shadows cast on player');