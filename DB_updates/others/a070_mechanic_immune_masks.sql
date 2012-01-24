-- set mechanic immune masks for bosses in this file
-- northrend 5man dungeons
SET @general_mask = 1|2|4|8|16|32|64|128|256|512|1024|2048|4096|8192|32768|65536|131072|262144|524288|4194304|8388608|16777216|33554432|67108864|536870912;

UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask|@general_mask
WHERE entry IN (26731, 26763, 26794, 26723, 29304, 29307, 29573, 29305, 29306, 29932, 26630, 26631, 27483, 26632, 28586, 28587, 28546, 28923, 27975, 27977, 27978, 23953, 24200, 24201, 23954, 26668, 26687, 26693, 26861, 29309, 29308, 29310, 29311, 30258, 28684, 28921, 29120, 29315, 29316, 29313, 29266, 29312, 29314, 31134, 26529, 26530, 26532, 26533, 32273,
-- difficulties 1
30748, 31673, 31679, 31656, 31211, 31212, 31215, 31217, 31362, 31350, 31360, 30810, 30774, 30807, 30540, 30510, 30529, 30532, 30788, 31349, 31384, 31381, 31386, 31537, 31533, 31536, 31612, 31611, 31538, 31610, 31511, 31370, 30530, 31368, 31365, 31469, 31456, 31465, 31464, 31509, 31508, 31512, 31507, 31510, 31367, 31506, 32313);

-- northrend raid dungeons
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask|@general_mask
WHERE entry IN (30452, 30451, 30449, 28860, 28859, 15956, 15953, 15952, 15954, 15936, 16011, 16061, 16060, 16028, 15931, 15932, 15928, 15929, 15930, 15989, 15990, 16064, 16065, 30549, 16063, 33113, 33118, 33186, 33293, 32857, 32930, 33515, 32906, 32845, 33350, 32865, 33271, 33288, 32871, 33329, 32934, 32933, 34035, 34014, 32915, 32913, 32914, 33215, 33228, 33170, 33050, 34129, 32916, 32919, 33202, 33203, 32918, 16803, 16505, 16506,
-- difficulties 1
29448, 29446, 29447, 29373, 29417, 29701, 29278, 29268, 29615, 29249, 29991, 30061, 29718, 29324, 29955, 29940, 30602, 30603, 30601, 31734, 31311, 31535, 31520, 31534, 30600, 32846, 33694, 33147, 33070, 33360, 33909, 34003, 33190, 33724, 33449, 33955, 33885, 34175, 33995, 33911, 33910, 34171, 34166, 33392, 33393, 33391, 33400, 33399, 33401, 33395, 33402, 33398, 33376, 33385, 34153, 29273, 29274, 29941);

-- remove some immunities
-- interrupt 33554432
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask&~33554432 WHERE entry IN
(
15990, 30061, -- Kel'Thuzad
32857, 33694, -- Stormcaller Brundir
33515, 34175, -- Aurayia
27975, 31384, -- Maiden of Grief
27978, 31386, -- Sjonnir
29305, 30530  -- Moorabi
);

-- charm
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask&~1 WHERE entry IN
(
16803, 29941, -- Death Knight Understudy
16505, 29273, -- Naxxramas Follower
16506, 29274 -- Naxxramas Worshipper
);

-- stun
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask&~2048 WHERE entry IN
(
32857, 33694 -- Stormcaller Brundir
);

-- some uncommon immunities
-- bleed 16384 for mechanical vehicles
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask|16384 WHERE `type` = 9 AND vehicle_id != 0;
