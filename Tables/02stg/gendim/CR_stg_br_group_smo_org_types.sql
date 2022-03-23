DROP TABLE if exists marloBI.`stg_br_group_smo_org_types`;

CREATE TABLE marloBI.`stg_br_group_smo_org_types`
(
  `pk_id_intersect_group_smo_org_type` BIGINT NOT NULL
, `smo_org_type_id` BIGINT NOT NULL
,`ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;
