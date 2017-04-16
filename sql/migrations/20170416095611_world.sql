INSERT INTO `migrations` VALUES ('20170416095611');

-- Update Meredith's menu option
UPDATE `gossip_menu_option` SET `option_text` = 'A kiss!', `condition_id` = 57 WHERE `menu_id` = 15526;

-- Make Narain cry when completing "Love Song for Narain"
UPDATE `quest_template` SET `OfferRewardEmote1` = 18, `OfferRewardEmoteDelay1` = 1500 WHERE `entry` = 8599;

-- Make "The Only Perscription" obtainable at neutral rep
UPDATE `quest_template` SET `RequiredMinRepValue` = 0 WHERE `entry` = 8620;

-- Make "The Good News and the Bad News" obtainable at neutral rep
UPDATE `quest_template` SET `RequiredMinRepValue` = 0 WHERE `entry` = 8728;

-- Make "Number Two" immune to most mechanics
UPDATE `creature_template` SET `MechanicImmuneMask` = (1 | 2 | 4 | 16 | 32 | 64 | 128 | 256 | 512 | 1024 | 2048 | 8192 | 65536 | 8388608)
WHERE `entry` = 15554;

-- Add condition "Love Song for Narain" done
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(57,    8,  8599,   0);


