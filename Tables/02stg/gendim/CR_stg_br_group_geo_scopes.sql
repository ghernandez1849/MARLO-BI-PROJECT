DROP TABLE if exists marloBI.`stg_br_group_geo_scopes`;

CREATE TABLE marloBI.`stg_br_group_geo_scopes`
(
  `pk_id_intersect_group_geo` BIGINT NOT NULL
, `geo_scope_id` BIGINT NOT NULL
,`ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;