-- Fix for quest Destroying the Altars (by Bastek)
UPDATE creature_loot_template SET ChanceOrQuestChance = -100 WHERE entry = 30746 AND item = 43159;
UPDATE quest_template SET ReqSpellCast1 = 57853, ReqSpellCast2 = 57853, ReqSpellCast3 = 57853, ReqSpellCast4 = 57853 WHERE entry = 13119;
DELETE FROM spell_script_target WHERE entry = 57853;
INSERT INTO spell_script_target VALUES
(57853, 1, 30742),
(57853, 1, 30744),
(57853, 1, 30745),
(57853, 1, 30950);
