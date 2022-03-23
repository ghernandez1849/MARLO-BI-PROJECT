DROP TABLE if exists `stg_br_group_srf_cci`;

CREATE TABLE `stg_br_group_srf_cci`
(
  `pk_id_intersect_group_srf_cci` BIGINT NOT NULL
, `slo_cci_composed_id` varchar(30)
, `sub_ido_id`   bigint(20) DEFAULT 0
, `is_primary`  int(1) DEFAULT 0
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;