drop table if exists `stg_pre_group_sdg`;


CREATE TABLE `stg_pre_group_sdg`
(
  `id_phase` BIGINT
, `ent_type` VARCHAR(10)
, `ent_id` BIGINT
, `sdg_short_name_group` TEXT
, `sdg_target_group` TEXT
, `sdg_indicators_group` TEXT
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
