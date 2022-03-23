DROP TABLE if exists marloBI.`stg_br_group_owners`;

CREATE TABLE marloBI.stg_br_group_owners
(
  `pk_id_intersect_group_owner` BIGINT not null
, `owner_id` varchar(20) 
, `ids_group` VARCHAR(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;