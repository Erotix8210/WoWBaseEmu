-- Adding spells and texts for NPCs type Winterskorn (Howling Fjord)

-- Add spells and texts for Winterskorn Woodsman (23662)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23662;
-- Text
DELETE FROM creature_ai_texts WHERE entry =-236621;
INSERT INTO creature_ai_texts VALUES
(-236621,'I\'ll eat your heart!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Woodsman Say1');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2366200,2366201);
INSERT INTO creature_ai_scripts VALUES
(2366200,23662,0,0,100,1,1000,1000,10000,10000,11,43410,1,0,0,0,0,0,0,0,0,0,'Winterskorn Woodsman - Cast Chop'),
(2366201,23662,4,0,100,0,0,0,0,0,11,38557,1,0,1,-236621,0,0,0,0,0,0,'Winterskorn Woodsman - Cast Throw and Say1 on Aggro');

-- Add spells and texts for Winterskorn Shield-Maiden (23663)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23663;
-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-236631,-236632,-236633);
INSERT INTO creature_ai_texts VALUES
(-236631,'I will take pleasure in gutting you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Shield-Maiden Say1'),
(-236632,'Stop trying to hit me and hit me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Shield-Maiden Say2'),
(-236633,'Die, maggot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Shield-Maiden Say3');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2366300,2366301,2366302);
INSERT INTO creature_ai_scripts VALUES
(2366300,23663,0,0,100,1,1000,1000,12000,12000,11,43416,1,0,0,0,0,0,0,0,0,0,'Winterskorn Shield-Maiden - Cast Chop'),
(2366301,23663,4,0,50,0,0,0,0,0,1,-236631,-236633,0,0,0,0,0,0,0,0,0,'Winterskorn Shield-Maiden - Say1 or Say2 on Aggro'),
(2366302,23663,1,0,50,1,10000,20000,30000,30000,1,-236632,0,0,0,0,0,0,0,0,0,0,'Winterskorn Shield-Maiden - Say2 Out of Combat');

-- Add spells and texts for Winterskorn Raider (23665)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23665;
-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-236651,-236652,-236653,-236654);
INSERT INTO creature_ai_texts VALUES
(-236651,'Come on, stop trying to hit me and hit me already!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Raider Say1'),
(-236652,'You practice as if you\'re still asleep.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Raider Say2'),
(-236653,'You spar like a girl.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Raider Say3'),
(-236654,'There will be no everlasting life for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Raider Say4');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2366500,2366501,2366502);
INSERT INTO creature_ai_scripts VALUES
(2366500,23665,0,0,100,1,1000,1000,10000,12000,11,11978,1,0,0,0,0,0,0,0,0,0,'Winterskorn Raider - Cast Kick'),
(2366501,23665,1,0,50,1,5000,15000,30000,30000,1,-236651,-236652,-236653,0,0,0,0,0,0,0,0,'Winterskorn Raider - Say Out of Combat'),
(2366502,23661,4,0,50,0,0,0,0,0,1,-236654,0,0,0,0,0,0,0,0,0,0,'Winterskorn Raider - Say4 on Aggro');

-- Add spells for Winterskorn Spearman (23653)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23653;
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2365300,2365301,2365302);
INSERT INTO creature_ai_scripts VALUES
(2365300,23653,0,0,100,1,1000,1000,10000,10000,11,43414,1,0,0,0,0,0,0,0,0,0,'Winterskorn Spearman - Cast Freezing Trap'),
(2365301,23653,0,0,100,1,5000,7000,10000,10000,11,32908,1,0,0,0,0,0,0,0,0,0,'Winterskorn Spearman - Cast Wing Clip'),
(2365302,23653,4,0,100,0,0,0,0,0,11,55217,1,0,0,0,0,0,0,0,0,0,'Winterskorn Spearman - Cast Throw Spear on Aggro');

-- Add spells and texts for Winterskorn Oracle (23669)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23669;
-- Text
DELETE FROM creature_ai_texts WHERE entry =-236691;
INSERT INTO creature_ai_texts VALUES
(-236691,'Haraak foln!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Oracle Say1');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2366900,2366901);
INSERT INTO creature_ai_scripts VALUES
(2366900,23669,0,0,100,1,1000,3000,8000,8000,11,43083,1,0,0,0,0,0,0,0,0,0,'Winterskorn Oracle - Cast Frostbolt'),
(2366901,23661,4,0,50,0,0,0,0,0,1,-236691,0,0,0,0,0,0,0,0,0,0,'Winterskorn Oracle - Say1 on Aggro');

-- Add spells and texts for Winterskorn Rune-Seer (23667)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23667;
-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-236671,-236672);
INSERT INTO creature_ai_texts VALUES
(-236671,'Haraak foln!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Rune-Seer Say1'),
(-236672,'Ugglin bo bjorr!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Rune-Seer Say2');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2366700,2366701,2366702,2366703,2366704);
INSERT INTO creature_ai_scripts VALUES
(2366700,23661,4,0,50,0,0,0,0,0,1,-236671,-236672,0,0,0,0,0,0,0,0,0,'Winterskorn Rune-Seer - Say1 or Say2 on Aggro'),
(2366701,23667,0,0,100,1,1000,1000,15000,15000,11,34787,1,0,0,0,0,0,0,0,0,0,'Winterskorn Rune-Seer - Cast Freezing Circle'),
(2366702,23667,0,0,100,1,3000,3000,6000,6000,11,43083,1,0,0,0,0,0,0,0,0,0,'Winterskorn Rune-Seer - Cast Frostbolt'),
(2366703,23667,0,0,100,1,5000,5000,20000,30000,11,43453,1,0,0,0,0,0,0,0,0,0,'Winterskorn Rune-Seer - Cast Rune Ward'),
(2366704,23667,2,0,100,1,30,1,5000,10000,11,11986,0,0,0,0,0,0,0,0,0,0,'Winterskorn Rune-Seer - Cast Healing Wave below 30% HP');

-- Add spells and texts for Winterskorn Bonegrinder (23655)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23655;
-- Text
DELETE FROM creature_ai_texts WHERE entry =-236551;
INSERT INTO creature_ai_texts VALUES
(-236551,'I will feed you to the dogs!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Bonegrinder Say1');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2365500,2365501);
INSERT INTO creature_ai_scripts VALUES
(2365500,23655,4,0,50,0,0,0,0,0,1,-236551,0,0,0,0,0,0,0,0,0,0,'Winterskorn Bonegrinder - Say1 on Aggro'),
(2365501,23655,0,0,100,1,1000,3000,10000,12000,11,43951,1,0,0,0,0,0,0,0,0,0,'Winterskorn Bonegrinder - Cast Bonegrinder');

-- Add spells and texts for Winterskorn Defender (24015)
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (-24015,-240152);
-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-240151,-240152);
INSERT INTO creature_ai_texts VALUES
(-240151,'I will feed you to the dogs!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Defender Say1'),
(-240152,'Your entrails will make a fine necklace.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Defender Say2');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2401500,2401501,2401502);
INSERT INTO creature_ai_scripts VALUES
(2401500,24015,0,0,100,1,1000,3000,10000,12000,11,15496,1,0,0,0,0,0,0,0,0,0,'Winterskorn Defender - Cast Cleave'),
(2401501,24015,0,0,100,1,5000,7000,10000,12000,11,18812,1,0,0,0,0,0,0,0,0,0,'Winterskorn Defender - Cast Knockdown'),
(2401502,24015,4,0,100,0,0,0,0,0,11,13730,1,0,1,-240151,-240152,0,0,0,0,0,'Winterskorn Defender - Cast Demoralizing Shout and Say 1 or Say 2 on Aggro');

-- Add texts for Winterskorn Tribesman (23661)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23661;
-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-236611,-236612,-236613);
INSERT INTO creature_ai_texts VALUES
(-236611,'YAAARRRGH!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Tribesman Say1'),
(-236612,'You come to die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Tribesman Say2'),
(-236613,'You tiny creatures disgust me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Tribesman Say3');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2366101,2366102);
INSERT INTO creature_ai_scripts VALUES
(2366101,23661,4,0,50,0,0,0,0,0,1,-236611,-236612,0,0,0,0,0,0,0,0,0,'Winterskorn Tribesman - Say1 or Say2 on Aggro'),
(2366102,23661,0,0,50,1,0,0,0,0,6,-236613,0,0,0,0,0,0,0,0,0,0,'Winterskorn Tribesman - Say3 in Combat');

-- Add texts for Winterskorn Warrior (23664)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23664;
-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-236641,-236642);
INSERT INTO creature_ai_texts VALUES
(-236641,'You come to die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Warrior Say1'),
(-236642,'Practice or not, you\'re going to spit teeth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Warrior Say2');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2366400,2366401);
INSERT INTO creature_ai_scripts VALUES
(2366400,23664,4,0,50,0,0,0,0,0,1,-236641,0,0,0,0,0,0,0,0,0,0,'Winterskorn Warrior - Say1 on Aggro'),
(2366401,23665,1,0,50,1,3000,13000,30000,30000,1,-236642,0,0,0,0,0,0,0,0,0,0,'Winterskorn Warrior - Say Out of Combat');

-- Add spells for Winterskorn Hunter (26663)
UPDATE creature_template SET AIName='EventAI' WHERE entry=26663;
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2666300,2666301,2666302);
INSERT INTO creature_ai_scripts VALUES
(2666300,26663,0,0,100,1,1000,2000,2000,2000,11,15547,1,0,0,0,0,0,0,0,0,0,'Winterskorn Hunter - Cast Shoot'),
(2666301,26663,0,0,100,1,500,1000,10000,12000,11,18651,1,0,0,0,0,0,0,0,0,0,'Winterskorn Hunter - Cast Multi-Shot'),
(2666302,26663,4,0,100,0,0,0,0,0,11,36828,1,0,0,0,0,0,0,0,0,0,'Winterskorn Hunter - Cast Rapid Fire on Aggro');

-- Add texts and spells for Winterskorn Rune-Caster (23668)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23668;
-- Text
DELETE FROM creature_ai_texts WHERE entry =-236681;
INSERT INTO creature_ai_texts VALUES
(-236681,'Ugglin bo bjorr!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Rune-Caster Say1');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2366800,2366801,2366802);
INSERT INTO creature_ai_scripts VALUES
(2366800,23668,0,0,100,1,1000,3000,5000,5000,11,43083,1,0,0,0,0,0,0,0,0,0,'Winterskorn Rune-Caster - Cast Frostbolt'),
(2366801,23668,0,0,100,1,4000,5000,5000,5000,11,12548,1,0,0,0,0,0,0,0,0,0,'Winterskorn Rune-Caster - Cast Frostshock'),
(2366802,23668,4,0,100,0,0,0,0,0,1,-236691,0,0,11,37798,1,0,0,0,0,0,'Winterskorn Rune-Caster - Say1 and cast Exploding Runes on Aggro');

-- Add texts and spells for Winterskorn Scout (24116)
UPDATE creature_template SET AIName='EventAI' WHERE entry=24116;
-- Text
DELETE FROM creature_ai_texts WHERE entry =-241161;
INSERT INTO creature_ai_texts VALUES
(-241161,'Look what\'s come to play.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Scout Say1');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2411600,2411601,2411602);
INSERT INTO creature_ai_scripts VALUES
(2411600,24116,0,0,100,1,1000,3000,5000,5000,11,15496,1,0,0,0,0,0,0,0,0,0,'Winterskorn Scout - Cast Cleave'),
(2411601,24116,0,0,100,1,4000,5000,5000,5000,11,18812,1,0,0,0,0,0,0,0,0,0,'Winterskorn Scout - Cast Knockdown'),
(2411602,24116,4,0,100,0,0,0,0,0,1,-241161,0,0,11,13730,1,0,0,0,0,0,'Winterskorn Scout - Say1 and cast Demoralizing Shout on Aggro');

-- Add texts and spells for Winterskorn Scald (23657)
UPDATE creature_template SET AIName='EventAI' WHERE entry=23657;
-- Text
DELETE FROM creature_ai_texts WHERE entry =-236571;
INSERT INTO creature_ai_texts VALUES
(-236571,'My life for Ymiron!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Scald Say1');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2365700,2365701,2365702);
INSERT INTO creature_ai_scripts VALUES
(2365700,23657,0,0,100,1,1000,2000,11000,12000,11,11829,1,0,0,0,0,0,0,0,0,0,'Winterskorn Scald - Cast Flamestrike'),
(2365701,23657,0,0,100,1,4000,5000,5000,5000,11,9053,1,0,0,0,0,0,0,0,0,0,'Winterskorn Scald - Cast Firball'),
(2365702,23657,4,0,100,0,0,0,0,0,1,-236571,0,0,11,37844,1,0,0,0,0,0,'Winterskorn Scald - Say1 and cast Fire Ward on Aggro');

-- Add texts for Winterskorn Berserker (23666)
UPDATE creature_template SET dynamicflags=dynamicflags & ~32, unit_flags=unit_flags & ~512 &~256, AIName='EventAI' WHERE entry=23666;
-- Text
DELETE FROM creature_ai_texts WHERE entry IN (-236661,-236662);
INSERT INTO creature_ai_texts VALUES
(-236661,'For Ymiron!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Berserker Say1'),
(-236662,'I will brak you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Berserker Say2');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2366600,2366601);
INSERT INTO creature_ai_scripts VALUES
(2366600,23666,4,0,50,0,0,0,0,0,1,-236661,0,0,0,0,0,0,0,0,0,0,'Winterskorn Berserker - Say1 on Aggro'),
(2366601,23666,0,0,50,1,0,0,0,0,6,-236662,0,0,0,0,0,0,0,0,0,0,'Winterskorn Berserker - Say2 in Combat');

-- Add texts and spells for Winterskorn Elder (23670)
UPDATE creature_template SET dynamicflags=dynamicflags & ~32, unit_flags=unit_flags & ~512 &~256 &~33554432, AIName='EventAI' WHERE entry=23670;
-- Text
DELETE FROM creature_ai_texts WHERE entry =-236701;
INSERT INTO creature_ai_texts VALUES
(-236701,'Look what\'s come to play.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Winterskorn Elder Say1');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2367000,2367001,2367002);
INSERT INTO creature_ai_scripts VALUES
(2367000,23670,0,0,100,1,1000,3000,5000,7000,11,9532,1,0,0,0,0,0,0,0,0,0,'Winterskorn Elder - Cast Lightning Bolt'),
(2367001,23670,2,0,100,1,30,1,5000,10000,11,11986,0,0,0,0,0,0,0,0,0,0,'Winterskorn Elder - Cast Healing Wave below 30% HP'),
(2367002,23670,4,0,100,0,0,0,0,0,1,-236701,0,0,11,32734,0,0,0,0,0,0,'Winterskorn Elder - Say1 and cast Earth Shield on Aggro');

-- Add texts and spells for Bjorn Halgurdsson <Winterskorn Chieftain> (24238)
UPDATE creature_template SET AIName='EventAI' WHERE entry=24238;
-- Text
DELETE FROM creature_ai_texts WHERE entry =-242381;
INSERT INTO creature_ai_texts VALUES
(-242381,'Fight without fear and the Val\'kyr will reward you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Bjorn Halgurdsson Yell1');
-- EventAi
DELETE FROM creature_ai_scripts WHERE id IN (2423800,2423801,2423802);
INSERT INTO creature_ai_scripts VALUES
(2423800,24238,0,0,100,1,1000,1000,10000,10000,11,33661,1,0,0,0,0,0,0,0,0,0,'Bjorn Halgurdsson - Cast Crush Armor'),
(2423801,24238,0,0,100,1,4000,4000,8000,8000,11,32736,1,0,0,0,0,0,0,0,0,0,'Bjorn Halgurdsson - Cast Mortal Strike'),
(2423802,24238,0,0,100,1,3000,6000,15000,20000,1,-242381,0,0,0,0,0,0,0,0,0,0,'Bjorn Halgurdsson - Yell1 in Combat');