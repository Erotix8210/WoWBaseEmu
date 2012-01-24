-- Reward value change for Jewelcrafting daily quests in Dalaran (by Bastek)
UPDATE quest_template SET RewOrReqMoney = 74000  WHERE entry IN
(12958, 12962, 12959, 12961, 12963, 12960);