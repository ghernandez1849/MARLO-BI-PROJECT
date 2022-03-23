drop table if exists `stg_intersect_group_milestones`;

CREATE TABLE `stg_intersect_group_milestones`
(
  `milestone_title_group` TEXT
, `outcome_description_group` TEXT
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;