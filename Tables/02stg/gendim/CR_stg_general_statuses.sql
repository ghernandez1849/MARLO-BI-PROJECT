DROP TABLE if exists `stg_general_statuses`;

CREATE TABLE `stg_general_statuses`
(
 `table_name` text
, `general_status_id` BIGINT NOT NULL
, `table_status_id` BIGINT
, `status_name` varchar(40)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;