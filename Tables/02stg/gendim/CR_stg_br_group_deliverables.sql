DROP TABLE if exists marloBI.`stg_br_group_deliverables`;

CREATE TABLE marloBI.`stg_br_group_deliverables`
(
  `pk_id_intersect_group_deliv` BIGINT NOT NULL
, `deliverable_id` BIGINT 
, `id_phase` BIGINT 
, `ids_group` varchar(2000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;