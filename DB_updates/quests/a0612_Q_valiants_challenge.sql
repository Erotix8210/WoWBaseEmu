-- Fix for quest The valiant's Challenge [AT] 

UPDATE creature_template SET gossip_menu_id = 33518 WHERE entry = 33518;

UPDATE creature_template SET mindmg = 3500, maxdmg = 4500, AIName = 'EventAI', faction_A =14, faction_H =14 WHERE entry = 33707;

DELETE from gossip_menu where entry=33518;
INSERT into gossip_menu (entry, text_id) VALUES
(33518, 1);

DELETE FROM gossip_menu_option WHERE menu_id = 33518;
INSERT INTO gossip_menu_option VALUES
(33518, 0, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13725, 0, 0, 0, 0, 0, 0, 0),
(33518, 1, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13699, 0, 0, 0, 0, 0, 0, 0),
(33518, 2, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13713, 0, 0, 0, 0, 0, 0, 0),
(33518, 3, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13723, 0, 0, 0, 0, 0, 0, 0),
(33518, 4, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13724, 0, 0, 0, 0, 0, 0, 0),
(33518, 5, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13726, 0, 0, 0, 0, 0, 0, 0),
(33518, 6, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13727, 0, 0, 0, 0, 0, 0, 0),
(33518, 7, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13728, 0, 0, 0, 0, 0, 0, 0),
(33518, 8, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13729, 0, 0, 0, 0, 0, 0, 0),
(33518, 9, 0, 'I am ready to fight!', 1, 1, 0, 0, 33518, 0, 0, NULL, 9, 13731, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM gossip_scripts WHERE id = 50102;
INSERT INTO gossip_scripts VALUES
(33518, 1, 10, 33707, 120000, 0, 0, 0, 0, 0, 0, 0, 8540.62, 1113.35, 556.78, 0.37, 'Summon Argent champion');

DELETE FROM creature_template_addon WHERE entry = 33707;
INSERT INTO creature_template_addon (entry, mount) VALUES
(33707, 28918);

DELETE FROM creature_ai_scripts WHERE creature_id = 33707;
INSERT INTO creature_ai_scripts VALUES
(3370701, 33707, 4, 0, 100, 0, 0, 1, 1, 5, 11, 63010, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Argent champion - Cast Charge on Aggro'),
(3370702, 33707, 6, 0, 100, 0, 0, 0, 0, 0, 33, 33708, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Argent champion - Kill credit');

