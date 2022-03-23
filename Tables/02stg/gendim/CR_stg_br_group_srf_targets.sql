DROP TABLE if exists marloBI.`stg_br_group_srf_targets`;

CREATE TABLE marloBI.`stg_br_group_srf_targets`
(
  `pk_id_intersect_group_srftar` BIGINT NOT NULL
, `srf_target_id` BIGINT NOT NULL
,`ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;