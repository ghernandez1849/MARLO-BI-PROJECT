drop TABLE if exists `stg_projects_info`;

CREATE TABLE `stg_projects_info` (
  `id` bigint(20) NOT NULL ,
  `title` text,
  `project_id` bigint(20) DEFAULT NULL,
  `summary` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `type` text,
  `status` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `pid_name` varchar(20),
  `project_link` text,
  `composed_title` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
