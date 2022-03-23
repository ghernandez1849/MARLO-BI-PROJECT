DROP TABLE if exists marloBI.`stg_br_group_locations`;

CREATE TABLE marloBI.`stg_br_group_locations`
(
  `pk_id_intersect_group_loc` BIGINT NOT NULL
, `loc_element_id` BIGINT NOT NULL
,`ids_group` varchar(300)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
