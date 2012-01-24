-- Rep value required change for 8121, 8122, 8114, 8115  (by Bastek)
-- Take Four Bases
UPDATE quest_template SET RequiredMinRepFaction = 510, RequiredMinRepValue = 3000 WHERE entry = 8121;
-- Take Five Bases
UPDATE quest_template SET RequiredMinRepFaction = 510, RequiredMinRepValue = 42000 WHERE entry = 8122;

-- Control Four Bases
UPDATE quest_template SET RequiredMinRepFaction = 509, RequiredMinRepValue = 3000 WHERE entry = 8114;
-- Control Five Bases
UPDATE quest_template SET RequiredMinRepFaction = 509, RequiredMinRepValue = 42000 WHERE entry = 8115;
