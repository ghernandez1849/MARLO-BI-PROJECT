drop table if exists `stg_intersect_group_oicrs`;

CREATE TABLE `stg_intersect_group_oicrs`
(
  `oicr_title_group` TEXT
, `oicr_compose_title_group` TEXT
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;