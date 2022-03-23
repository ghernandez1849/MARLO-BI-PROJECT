drop table if exists `stg_pre_group_milestones`;

CREATE TABLE `stg_pre_group_milestones`
(
  `id_phase` BIGINT
, `ent_id` BIGINT
, `ent_type` VARCHAR(10)
, `milestone_title_group` TEXT
, `outcome_description_group` TEXT
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;