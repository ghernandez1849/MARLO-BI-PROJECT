drop TABLE if exists `fact_project_budgets`;

CREATE TABLE `fact_project_budgets` (
  `fk_id_crp` BIGINT
, `fk_id_year` BIGINT
, `fk_id_projects_info` BIGINT
, `fk_id_fs_info` BIGINT
, `fk_id_ext_partner` BIGINT
, `fk_id_intersect_group_inst` bigint
,  `gender_percentage` double(10,2) DEFAULT NULL
,  `amount` double(30,2) DEFAULT NULL
,  `amount_gender` double(30,2) DEFAULT NULL
,  `amount_no_gender` double(30,2) DEFAULT NULL
,  `pr_has_budget` tinyint(1) DEFAULT NULL
, `updated_date` DATETIME,
primary key (`fk_id_crp`, `fk_id_year`, `fk_id_projects_info`, `fk_id_fs_info`,`fk_id_ext_partner`, `fk_id_intersect_group_inst`),
KEY `idx_fact_project_budgets_tk` (`fk_id_crp`, `fk_id_year`, `fk_id_projects_info`, `fk_id_fs_info`,`fk_id_ext_partner`, `fk_id_intersect_group_inst`),
CONSTRAINT `fact_project_budgets_ibfk_01` FOREIGN KEY (`fk_id_year`) REFERENCES `dim_year` (`pk_id_year`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_project_budgets_ibfk_02` FOREIGN KEY (`fk_id_projects_info`) REFERENCES `dim_projects_info` (`pk_id_projects_info`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_project_budgets_ibfk_03` FOREIGN KEY (`fk_id_crp`) REFERENCES `dim_crps` (`pk_id_crp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_project_budgets_ibfk_04` FOREIGN KEY (`fk_id_fs_info`) REFERENCES `dim_fs_info` (`pk_id_fs_info`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_project_budgets_ibfk_05` FOREIGN KEY (`fk_id_intersect_group_inst`) REFERENCES `dim_intersect_group_institutions` (`pk_id_intersect_group_inst`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
