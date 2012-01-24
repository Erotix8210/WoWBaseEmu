-- support for quest Guide our Sights (quest 11232)
-- add focus for spell Mark Cannon (spell 43076)

DELETE FROM gameobject WHERE id = 300163;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(300163,571,1,1,1579.078857,-6252.734375,17.654793,0.747456,0,0,0.460629,-0.887593,25,0,1),
(300163,571,1,1,1500.387573,-6192.781738,17.364510,0.640174,0,0,0.460629,-0.887593,25,0,1);
