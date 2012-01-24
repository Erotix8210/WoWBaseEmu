-- Instance Alterac Valley
-- Instance last changes: a336

-- Health change for Alterac Valley NPC's (BG range 80) (by Bastek)
-- Irondeep Miner
UPDATE creature_template SET minhealth = 23245, maxhealth = 23245, minlevel = 80, maxlevel = 82 WHERE entry = 37334;
-- Irondeep Guard
UPDATE creature_template SET minhealth = 2025, maxhealth = 2090, minlevel = 80, maxlevel = 82 WHERE entry = 37333;
