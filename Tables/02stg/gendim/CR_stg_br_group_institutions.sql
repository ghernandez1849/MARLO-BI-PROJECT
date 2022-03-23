DROP TABLE if exists marloBI.`stg_br_group_institutions`;

CREATE TABLE marloBI.`stg_br_group_institutions`
(
  `pk_id_intersect_group_inst` BIGINT NOT NULL
, `institution_id` BIGINT NOT NULL
, `role_name` varchar(50)
,`ids_group` varchar(1000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;