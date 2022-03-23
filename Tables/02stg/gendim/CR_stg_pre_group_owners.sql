drop table if exists `stg_pre_group_owners`;

CREATE TABLE `stg_pre_group_owners`
(
  `id_phase` BIGINT
, `ent_id` BIGINT
, `ent_type` VARCHAR(10)
, `owner_name_group` TEXT
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;