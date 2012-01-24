-- Gnerd Rage
DELETE FROM `achievement_criteria_requirement` WHERE `criteria_id` = 3882;
INSERT INTO `achievement_criteria_requirement` (`criteria_id`, `type`, `value1`) VALUES ('3882', '5', '48890');

-- Bloodthirsty Berserker
DELETE FROM `achievement_criteria_requirement` WHERE `criteria_id` = 3684;
INSERT INTO `achievement_criteria_requirement` (`criteria_id`, `type`, `value1`) VALUES ('3684', '5', '23505');

-- With a Little Helper from My Friends
DELETE FROM `achievement_criteria_requirement` WHERE `criteria_id` IN (3827,3826,3828,3829);
INSERT INTO `achievement_criteria_requirement` (`criteria_id`, `type`, `value1`) VALUES
('3827', '5', '26272'),
('3826', '5', '26157'),
('3828', '5', '26273'),
('3829', '5', '26274');

-- Not In My House (203)
DELETE FROM `achievement_criteria_requirement` WHERE (`criteria_id`='7020') AND (`type`='11');

-- ironman
UPDATE `achievement_criteria_requirement` SET `type`='0' WHERE (`criteria_id`='1824');

-- Save The Day
DELETE FROM `achievement_criteria_requirement` WHERE criteria_id IN (5606, 5605);
INSERT INTO `achievement_criteria_requirement` (`criteria_id`, `type`, `value1`) VALUES
('5605', '7', '23333'),
('5605', '6', '4571'),
('5605', '14', '469'),
('5606', '7', '23335'),
('5606', '6', '4572'),
('5606', '14', '67'); 