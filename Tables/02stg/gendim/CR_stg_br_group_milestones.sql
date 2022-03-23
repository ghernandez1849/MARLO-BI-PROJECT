DROP TABLE if exists marloBI.`stg_br_group_milestones`;

CREATE TABLE marloBI.stg_br_group_milestones
(
  `pk_id_intersect_group_milestone` BIGINT not null
, `id_phase` bigint(20) 
, `outcome_composed_id` varchar(20) 
, `milestone_composed_id` varchar(20) 
, `is_primary` INT 
, `ids_group` VARCHAR(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;