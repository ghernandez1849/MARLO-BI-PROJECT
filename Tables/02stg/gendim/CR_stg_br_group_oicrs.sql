DROP TABLE if exists marloBI.`stg_br_group_oicrs`;

CREATE TABLE marloBI.`stg_br_group_oicrs`
(
  `pk_id_intersect_group_oicr` BIGINT not null
, `id_phase` bigint(20) 
, `oicr_id` bigint(20) 
, `ids_group` VARCHAR(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;