-- quest Blowing Hodir's Horn
DELETE FROM item_required_target WHERE entry = 42164;
INSERT INTO item_required_target (entry, TYPE, targetEntry) VALUES
('42164', '2', '30135'),
('42164', '2', '29974');

DELETE FROM spell_script_target WHERE entry = 55983;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
('55983', '2', '30135'),
('55983', '2', '29974');

UPDATE creature_template SET ScriptName = 'spell_dummy_npc' WHERE entry IN (29974, 30135);
