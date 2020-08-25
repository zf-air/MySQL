drop table course;
-- 课程表
CREATE TABLE `Course`(
	`c_id`  VARCHAR(20), -- 课程号
	`c_name` VARCHAR(20) NOT NULL DEFAULT '', -- 课程名
	`t_id` VARCHAR(20) NOT NULL, -- 教师号
	PRIMARY KEY(`c_id`),
    foreign key (t_id) references Teacher(t_id)
);