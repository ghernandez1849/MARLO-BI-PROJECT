DROP TABLE if exists `stg_br_group_proj`;

CREATE TABLE `stg_br_group_proj`
(
  `pk_id_intersect_group_proj` BIGINT NOT NULL
, `project_id` bigint(20) DEFAULT 0
, `id_phase`  bigint(20) DEFAULT 0
, `is_owner`   int(1) DEFAULT 0
, `ids_group` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

