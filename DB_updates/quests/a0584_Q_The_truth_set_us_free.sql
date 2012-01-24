UPDATE `item_template` SET `ScriptName`='Crystalline_Orb' WHERE (`entry`='37577');

DELETE FROM `creature_template_addon` WHERE entry = 27220;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `b2_0_sheath`) VALUES ('27220', '24447', '1');

DELETE FROM `event_scripts` WHERE id = 18014;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `comments`) VALUES ('18014', '140', '7', '12301', '20', 'Quest Complete');
INSERT INTO `event_scripts` (`id`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`, `comments`) VALUES
('18014', '10', '27476', '105000', '3092.42', '-1252.368', '11.08', '1.81', 'Summon Captain Luc Valonforth'),
('18014', '10', '27492', '39000', '3088.997', '-1239.49', '10.395', '5', 'Summon Alliance Emmisary'),
('18014', '10', '27225', '105000', '3102.269', '-1239.237', '10.53', '4.26', 'Summon Rifleman #1'),
('18014', '10', '27225', '105000', '3100.269', '-1237.237', '10.24', '4.09', 'Summon Rifleman #2'),
('18014', '10', '27224', '105000', '3101.33', '-1238.391', '10.4', '4.04', 'Summon Knight #1'),
('18014', '10', '27224', '105000', '3086.33', '-1236.391', '10.4', '4.81', 'Summon Knight #2'),
('18014', '10', '27220', '105000', '3105.19', '-1234.283', '12.78', '4.11', 'Summon Captain #1'),
('18014', '10', '27220', '105000', '3083.19', '-1234.158', '15.12', '5.25', 'Summon Captain #2'),
('18014', '10', '27229', '105000', '3103.633', '-1239.852', '10.7', '3.90', 'Summon Footman #1'),
('18014', '10', '27229', '39000', '3082.434', '-1245.323', '10.10', '0.28', 'Summon Footman Army #1'),
('18014', '10', '27229', '39000', '3083.063', '-1247.444', '10.07', '0.28', 'Summon Footman Army #2'),
('18014', '10', '27229', '39000', '3083.729', '-1249.658', '10.07', '0.28', 'Summon Footman Army #3'),
('18014', '10', '27229', '39000', '3084.280', '-1251.952', '10.05', '0.28', 'Summon Footman Army #4'),
('18014', '10', '27229', '39000', '3080.014', '-1245.996', '10.01', '0.28', 'Summon Footman Army #5'),
('18014', '10', '27229', '39000', '3080.528', '-1248.271', '9.95', '0.28', 'Summon Footman Army #6'),
('18014', '10', '27229', '39000', '3081.012', '-1250.427', '9.92', '0.28', 'Summon Footman Army #7'),
('18014', '10', '27229', '39000', '3081.673', '-1252.655', '9.87', '0.28', 'Summon Footman Army #8');

INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `comments`) VALUES
('18014', '100', '7', '12301', '40', 'Quest Complete');

INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`, `comments`) VALUES
('18014', '40', '10', '27455', '67000', '3102.344', '-1250.848', '11.7', '3.33', 'Summon Prince Arthas'),
('18014', '40', '10', '27480', '67000', '3103.244', '-1255.333', '12.82', '2.97', 'Summon Muradin');

UPDATE `creature_template` SET `AIName`='EventAI' WHERE entry IN('27476', '27480', '27492', '27455');
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN(27476, 27480, 27492, 27455);
DELETE FROM `creature_ai_texts` WHERE entry IN(-274761, -274762, -274763, -274764, -274921, -274922, -274551, -274552, -274553, -274554, -274801, -274802);

INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `comment`) VALUES
('2747601', '27476', '1', '0', '0', '1', '1', '1', '-274761', 'Captain Luc Valonforth - Text #1'),
('2747602', '27476', '1', '18000', '18000', '1', '1', '1', '-274762', 'Captain Luc Valonforth - Text #2'),
('2747603', '27476', '1', '35000', '35000', '1', '1', '1', '-274763', 'Captain Luc Valonforth - Text #3'),
('2747604', '27476', '1', '46000', '46000', '1', '1', '1', '-274764', 'Captain Luc Valonforth - Text #4'),

('2749201', '27492', '1', '8500', '8500', '1', '1', '1', '-274921', 'Alliance Emissary - Text #1'),
('2749202', '27492', '1', '22500', '22500', '1', '1', '1', '-274922', 'Alliance Emissary - Text #2'),

('2745501', '27455', '1', '3000', '3000', '1', '1', '1', '-274551', 'Prince Arthas - Text #1'),
('2745502', '27455', '1', '15000', '15000', '1', '1', '1', '-274552', 'Prince Arthas - Text #2'),
('2745503', '27455', '1', '32000', '32000', '1', '1', '1', '-274553', 'Prince Arthas - Text #3'),
('2745504', '27455', '1', '55000', '55000', '1', '1', '1', '-274554', 'Prince Arthas - Text #4'),

('2748001', '27480', '1', '27000', '27000', '1', '1', '1', '-274801', 'Muradin - Text #1'),
('2748002', '27480', '1', '41000', '41000', '1', '1', '1', '-274802', 'Muradin - Text #2');

INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `emote`, `comment`) VALUES
('-274761', 'I apologize, emissary, but the prince is away on an errand. What brings you to this desolate place?', '12719', '1', '27476'),
('-274762', 'We\'re to just pick up and leave?', '12720', '1', '27476'),
('-274763', 'To hell with the undead! We\'ll cut our way through the woods, men!', '12721', '5', '27476'),
('-274764', 'Well, milord, your father had our troops recalled at Lord Uther\'s request.', '12722', '1', '27476'),

('-274921', 'By royal edict, you men are to return to Lordaeron immediately. Lord Uther has convinced the king to recall this expedition.', '12723', '1', '27476'),
('-274922', 'That\'s correct. My men report that the roads from here to the shore are held by the undead. You\'ll need to find an alternate route back to your ships.', '12724', '1', '27476'),

('-274551', 'Captain, why are the guards not at their posts?', '12725', '1', '27476'),
('-274552', 'Uther had my troops recalled? Damn it! If my warriors abandon me, I\'ll never defeat Mal\'Ganis. The ships must be burned before the men reach the shore!', '12726', '1', '27476'),
('-274553', 'Burned down to their frames! No one goes home until our job here is done!', '12727', '1', '27476'),
('-274554', 'Spare me, Muradin. You weren\'t there to see what Mal\'Ganis did to my homeland.', '12728', '1', '27476'),

('-274801', 'Isn\'t that a bit much, lad?', '12733', '1', '27476'),
('-274802', 'You lied to your men and betrayed the mercenaries who fought for you. What\'s happening to you, Arthas? Is vengeance all that\'s important to you?', '12734', '1', '27476');
