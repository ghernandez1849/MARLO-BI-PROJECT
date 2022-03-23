drop table if exists `stg_intersect_group_sdg`;


CREATE TABLE `stg_intersect_group_sdg`
(
  `sdg_short_name_group` TEXT
, `sdg_target_group` TEXT
, `sdg_indicators_group` TEXT
, `ids_group` VARCHAR(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
