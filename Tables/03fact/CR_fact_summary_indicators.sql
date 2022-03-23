drop table if exists `fact_summary_indicators`;

CREATE TABLE `fact_summary_indicators` (
  `fk_id_crp` BIGINT not null
, `fk_id_year` BIGINT not null
, `fk_id_intersect_group_milestone` BIGINT not null
, `fk_id_intersect_group_inst` BIGINT not null
, `fk_id_intersect_group_loc` BIGINT not null
, `fk_id_intersect_group_geo` BIGINT not null
, `fk_id_intersect_group_ccm` BIGINT not null
, `fk_id_general_status` BIGINT not null
, `oicrs_number` DECIMAL(41)  
, `policies_number` DECIMAL(41)  
, `innovations_number` DECIMAL(41)  
, `projects_number` DECIMAL(41)  
, `fs_number` DECIMAL(41)  
, `deliverables_number` DECIMAL(41)  
, `melias_number` DECIMAL(41)  
, `fs_budget` DECIMAL(41)  
, `fs_budget_allocated` DECIMAL(41)  
, `total_indicators_number` DECIMAL(41)  
, primary key (`fk_id_crp`, `fk_id_year`,  `fk_id_intersect_group_milestone`, `fk_id_intersect_group_inst`, 
`fk_id_intersect_group_loc`, `fk_id_intersect_group_geo`, `fk_id_intersect_group_ccm`, `fk_id_general_status` ),
  KEY `idx_fact_summary_indicators_tk` (`fk_id_crp`, `fk_id_year`, `fk_id_intersect_group_milestone`, `fk_id_intersect_group_inst`, 
`fk_id_intersect_group_loc`, `fk_id_intersect_group_geo`, `fk_id_intersect_group_ccm`,`fk_id_general_status` ),
CONSTRAINT `fact_summary_indicators_ibfk_01` FOREIGN KEY (`fk_id_year`) REFERENCES `dim_year` (`pk_id_year`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_summary_indicators_ibfk_03` FOREIGN KEY (`fk_id_crp`) REFERENCES `dim_crps` (`pk_id_crp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_summary_indicators_ibfk_04` FOREIGN KEY (`fk_id_intersect_group_loc`) REFERENCES `dim_intersect_group_locations` (`pk_id_intersect_group_loc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_summary_indicators_ibfk_05` FOREIGN KEY (`fk_id_intersect_group_inst`) REFERENCES `dim_intersect_group_institutions` (`pk_id_intersect_group_inst`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_summary_indicators_ibfk_06` FOREIGN KEY (`fk_id_intersect_group_geo`) REFERENCES `dim_intersect_group_geo_scopes` (`pk_id_intersect_group_geo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_summary_indicators_ibfk_07` FOREIGN KEY (`fk_id_intersect_group_milestone`) REFERENCES `dim_intersect_group_milestones` (`pk_id_intersect_group_milestone`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_summary_indicators_ibfk_08` FOREIGN KEY (`fk_id_intersect_group_ccm`) REFERENCES `dim_intersect_group_ccm` (`pk_id_intersect_group_ccm`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `fact_summary_indicators_ibfk_09` FOREIGN KEY (`fk_id_general_status`) REFERENCES `dim_general_statuses` (`pk_id_general_status`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB CHARSET=utf8mb4;

