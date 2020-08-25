drop table score;
-- 成绩表
CREATE TABLE `Score`(
	`s_id` VARCHAR(20),
	`c_id`  VARCHAR(20),
	`s_score` integer,
	PRIMARY KEY(`s_id`,`c_id`)
);