drop table if exists `fact_fs`;

CREATE TABLE `fact_fs` (
  `fk_id_year` bigint(20) NOT NULL,
  `fk_id_fs_info` bigint(20) NOT NULL,
  `fk_id_crp` bigint(20) NOT NULL,
  `fk_id_intersect_group_loc` bigint(20) NOT NULL,
  `fk_id_intersect_group_inst` bigint(20) NOT NULL,
  `fk_id_intersect_group_geo` BIGINT(20) NOT NULL,
  `fk_id_inst_orig_donor` bigint(20) NOT NULL,
  `fk_id_inst_direct_donor` bigint(20) NOT NULL,
  `fk_id_inst_lead_center` bigint(20) NOT NULL,
  `fk_id_general_status` bigint(20) NOT NULL,
  `budget_amount` double(20,5),
  `budget_amount_allocated` double(20,5),
  `pending_budget_amount_allocated` double(20,5),
  `has_budget` tinyint(1),
  `has_budget_allocated` tinyint(1),
  `updated_date` DATETIME,
  primary key (`fk_id_year`, `fk_id_fs_info`, `fk_id_crp`, `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,
  `fk_id_inst_orig_donor`,`fk_id_inst_direct_donor`,`fk_id_inst_lead_center`, `fk_id_general_status`),
  KEY `idx_fact_fs_tk` (`fk_id_year`, `fk_id_fs_info`, `fk_id_crp`, `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,
  `fk_id_inst_orig_donor`,`fk_id_inst_direct_donor`,`fk_id_inst_lead_center`, `fk_id_general_status`),
  CONSTRAINT `fact_fs_ibfk_1` FOREIGN KEY (`fk_id_year`) REFERENCES `dim_year` (`pk_id_year`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_fs_ibfk_2` FOREIGN KEY (`fk_id_fs_info`) REFERENCES `dim_fs_info` (`pk_id_fs_info`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_fs_ibfk_3` FOREIGN KEY (`fk_id_crp`) REFERENCES `dim_crps` (`pk_id_crp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_fs_ibfk_4` FOREIGN KEY (`fk_id_intersect_group_loc`) REFERENCES `dim_intersect_group_locations` (`pk_id_intersect_group_loc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_fs_ibfk_5` FOREIGN KEY (`fk_id_intersect_group_inst`) REFERENCES `dim_intersect_group_institutions` (`pk_id_intersect_group_inst`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_fs_ibfk_6` FOREIGN KEY (`fk_id_intersect_group_geo`) REFERENCES `dim_intersect_group_geo_scopes` (`pk_id_intersect_group_geo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_fs_ibfk_7` FOREIGN KEY (`fk_id_general_status`) REFERENCES `dim_general_statuses` (`pk_id_general_status`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB CHARSET=utf8mb4;

