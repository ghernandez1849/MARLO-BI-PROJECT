drop table if exists `fact_oicrs`;

CREATE TABLE `fact_oicrs` (
  `fk_id_crp` BIGINT not null
, `fk_id_year` BIGINT not null
, `fk_id_stg_maturities` BIGINT not null
, `fk_id_oicr_info` BIGINT not null
, `fk_id_intersect_group_milestone` BIGINT not null
, `fk_id_intersect_group_sdg` BIGINT not null
, `fk_id_intersect_group_srf_cci` BIGINT not null
, `fk_id_intersect_group_srftar` BIGINT not null
, `fk_id_intersect_group_inst` BIGINT not null
, `fk_id_intersect_group_loc` BIGINT not null
, `fk_id_intersect_group_geo` BIGINT not null
, `fk_id_intersect_group_flag` BIGINT not null
, `fk_id_intersect_group_ccm` BIGINT not null
, `fk_id_intersect_group_proj` BIGINT not null
, `fk_id_general_status` BIGINT not null
, `quantity` bigint
, `updated_date` DATETIME,
  primary key (`fk_id_year`, `fk_id_oicr_info`, `fk_id_crp`, `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,
`fk_id_stg_maturities` ,`fk_id_intersect_group_milestone` ,`fk_id_intersect_group_sdg`, `fk_id_intersect_group_srf_cci`, `fk_id_intersect_group_srftar`,
 `fk_id_intersect_group_flag`, `fk_id_intersect_group_ccm`, `fk_id_intersect_group_proj`, `fk_id_general_status` ),
  KEY `idx_fact_oicrs_tk` (`fk_id_year`, `fk_id_oicr_info`, `fk_id_crp`, `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,
`fk_id_stg_maturities` ,`fk_id_intersect_group_milestone` ,`fk_id_intersect_group_sdg`, `fk_id_intersect_group_srf_cci`, `fk_id_intersect_group_srftar`,
 `fk_id_intersect_group_flag`, `fk_id_intersect_group_ccm`, `fk_id_intersect_group_proj`, `fk_id_general_status` ),
 CONSTRAINT `fact_oicr_ibfk_01` FOREIGN KEY (`fk_id_year`) REFERENCES `dim_year` (`pk_id_year`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_02` FOREIGN KEY (`fk_id_oicr_info`) REFERENCES `dim_oicrs_info` (`pk_id_oicr_info`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_03` FOREIGN KEY (`fk_id_crp`) REFERENCES `dim_crps` (`pk_id_crp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_04` FOREIGN KEY (`fk_id_intersect_group_loc`) REFERENCES `dim_intersect_group_locations` (`pk_id_intersect_group_loc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_05` FOREIGN KEY (`fk_id_intersect_group_inst`) REFERENCES `dim_intersect_group_institutions` (`pk_id_intersect_group_inst`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_06` FOREIGN KEY (`fk_id_intersect_group_geo`) REFERENCES `dim_intersect_group_geo_scopes` (`pk_id_intersect_group_geo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_07` FOREIGN KEY (`fk_id_stg_maturities`) REFERENCES `dim_stg_maturities` (`pk_id_stg_maturities`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_08` FOREIGN KEY (`fk_id_intersect_group_flag`) REFERENCES `dim_intersect_group_flagships` (`pk_id_intersect_group_flag`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_09` FOREIGN KEY (`fk_id_intersect_group_milestone`) REFERENCES `dim_intersect_group_milestones` (`pk_id_intersect_group_milestone`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_10` FOREIGN KEY (`fk_id_intersect_group_srf_cci`) REFERENCES `dim_intersect_group_srf_cci` (`pk_id_intersect_group_srf_cci`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_11` FOREIGN KEY (`fk_id_intersect_group_sdg`) REFERENCES `dim_intersect_group_sdg` (`pk_id_intersect_group_sdg`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_12` FOREIGN KEY (`fk_id_intersect_group_srftar`) REFERENCES `dim_intersect_group_srf_targets` (`pk_id_intersect_group_srftar`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_13` FOREIGN KEY (`fk_id_intersect_group_ccm`) REFERENCES `dim_intersect_group_ccm` (`pk_id_intersect_group_ccm`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_14` FOREIGN KEY (`fk_id_intersect_group_proj`) REFERENCES `dim_intersect_group_proj` (`pk_id_intersect_group_proj`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 CONSTRAINT `fact_oicrs_ibfk_15` FOREIGN KEY (`fk_id_general_status`) REFERENCES `dim_general_statuses` (`pk_id_general_status`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB CHARSET=utf8mb4;
