drop table if exists `stg_milestones`;

CREATE TABLE `stg_milestones` (
  `id_phase` bigint(20) DEFAULT NULL,
  `milestone_composed_id` varchar(50) DEFAULT NULL,
  `milestone_id` varchar(50) DEFAULT NULL,
  `milestone_title` text ,
  `mile_year` int(11) DEFAULT NULL,
  `mile_extended_year` int(11) DEFAULT NULL,
  `milestone_year` int(11) DEFAULT NULL,
  `outcome_id` bigint(20) DEFAULT NULL,
  `outcome_composed_id` varchar(50) DEFAULT NULL,
  `outcome_description` text ,
  `outcome_target_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
