ALTER TABLE `transactions` ADD `is_rejected` TINYINT NULL DEFAULT '0' AFTER `payment_status`;