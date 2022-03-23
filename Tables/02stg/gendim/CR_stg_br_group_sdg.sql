DROP TABLE if exists marloBI.`stg_br_group_sdg`;

CREATE TABLE marloBI.`stg_br_group_sdg`
(
  `pk_id_intersect_group_sdg` BIGINT NOT NULL
, `sdg_id` bigint(20) 
, `sdg_target_id`  bigint(20) DEFAULT 0
, `sdg_indicator_id` bigint(20) DEFAULT 0
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

