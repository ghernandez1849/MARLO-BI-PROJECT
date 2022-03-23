DROP TABLE if exists marloBI.`stg_br_group_flagships`;

CREATE TABLE marloBI.`stg_br_group_flagships`
(
  `pk_id_intersect_group_flag` BIGINT NOT NULL
, `flagship_id` BIGINT NOT NULL
,`ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;