drop table if exists `fact_melias`;

CREATE TABLE `fact_melias` (
  `fk_id_crp` BIGINT not null
, `fk_id_year` BIGINT not null
, `fk_id_study_type` BIGINT not null
, `fk_id_melia_info` BIGINT not null
, `fk_id_intersect_group_sdg` BIGINT not null
, `fk_id_intersect_group_srf_cci` BIGINT not null
, `fk_id_intersect_group_srftar` BIGINT not null
, `fk_id_intersect_group_loc` BIGINT not null
, `fk_id_intersect_group_geo` BIGINT not null
, `fk_id_intersect_group_proj` BIGINT not null
, `fk_id_general_status` BIGINT not null
, `quantity` bigint
, `updated_date` DATETIME,
  primary key (`fk_id_year`, `fk_id_melia_info`, `fk_id_crp`, `fk_id_intersect_group_loc`, `fk_id_intersect_group_geo`,
 `fk_id_study_type`, `fk_id_intersect_group_sdg`, `fk_id_intersect_group_srf_cci`, `fk_id_intersect_group_srftar`,
  `fk_id_intersect_group_proj`, `fk_id_general_status` ),
  KEY `idx_fact_melias_tk` (`fk_id_year`, `fk_id_melia_info`, `fk_id_crp`, `fk_id_intersect_group_loc`, `fk_id_intersect_group_geo`,
 `fk_id_study_type`, `fk_id_intersect_group_sdg`, `fk_id_intersect_group_srf_cci`, `fk_id_intersect_group_srftar`,
  `fk_id_intersect_group_proj`, `fk_id_general_status` ),
  CONSTRAINT `fact_melias_ibfk_01` FOREIGN KEY (`fk_id_year`) REFERENCES `dim_year` (`pk_id_year`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_02` FOREIGN KEY (`fk_id_melia_info`) REFERENCES `dim_melias_info` (`pk_id_melia_info`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_03` FOREIGN KEY (`fk_id_crp`) REFERENCES `dim_crps` (`pk_id_crp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_04` FOREIGN KEY (`fk_id_intersect_group_loc`) REFERENCES `dim_intersect_group_locations` (`pk_id_intersect_group_loc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_05` FOREIGN KEY (`fk_id_study_type`) REFERENCES `dim_study_types` (`pk_id_study_type`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_06` FOREIGN KEY (`fk_id_intersect_group_geo`) REFERENCES `dim_intersect_group_geo_scopes` (`pk_id_intersect_group_geo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_07` FOREIGN KEY (`fk_id_intersect_group_srf_cci`) REFERENCES `dim_intersect_group_srf_cci` (`pk_id_intersect_group_srf_cci`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_08` FOREIGN KEY (`fk_id_intersect_group_sdg`) REFERENCES `dim_intersect_group_sdg` (`pk_id_intersect_group_sdg`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_09` FOREIGN KEY (`fk_id_intersect_group_srftar`) REFERENCES `dim_intersect_group_srf_targets` (`pk_id_intersect_group_srftar`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_10` FOREIGN KEY (`fk_id_intersect_group_proj`) REFERENCES `dim_intersect_group_proj` (`pk_id_intersect_group_proj`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_melias_ibfk_11` FOREIGN KEY (`fk_id_general_status`) REFERENCES `dim_general_statuses` (`pk_id_general_status`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB CHARSET=utf8mb4;

