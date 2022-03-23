drop table if exists `stg_pre_group_oicrs`;

CREATE TABLE `stg_pre_group_oicrs`
(
  `id_phase` BIGINT
, `ent_id` BIGINT
, `ent_type` VARCHAR(10)
, `oicr_title_group` TEXT
, `oicr_compose_title_group` TEXT
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;