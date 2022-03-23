drop TABLE if exists `pre_project_budgets_fact`;

CREATE TABLE `pre_project_budgets_fact` (
  `fk_id_crp` BIGINT
, `fk_id_year` BIGINT
, `fk_id_projects_info` BIGINT
, `fk_id_fs_info` BIGINT
, `fk_id_ext_partner` BIGINT
, `fk_id_intersect_group_inst` bigint
,  `id` bigint(20) 
,  `project_id` bigint(20) NOT NULL
,  `year` int(4) NOT NULL
,  `funding_source_id` bigint(20) DEFAULT NULL
,  `institution_id` bigint(20) NOT NULL
,  `id_phase` bigint(20) DEFAULT NULL
,  `gender_percentage` double(10,2) DEFAULT NULL
,  `amount` double(30,2) DEFAULT NULL
,  `amount_gender` double(30,2) DEFAULT NULL
,  `amount_no_gender` double(30,2) DEFAULT NULL
,  `pr_has_budget` tinyint(1) DEFAULT NULL
, `updated_date` DATETIME
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
