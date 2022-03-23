drop table if exists `fact_innovations`;

CREATE TABLE `fact_innovations`
(
  `fk_id_crp` BIGINT
, `fk_id_year` BIGINT
, `fk_id_innovation_info` BIGINT
, `fk_id_innovation_stg` BIGINT
, `fk_id_innovation_type` BIGINT
, `fk_id_intersect_group_inst` BIGINT
, `fk_id_intersect_group_loc` BIGINT
, `fk_id_intersect_group_geo` BIGINT
, `fk_id_intersect_group_milestone` BIGINT
, `fk_id_intersect_group_srf_cci` BIGINT
, `fk_id_intersect_group_sdg` BIGINT
, `fk_id_intersect_group_oicr` BIGINT
, `fk_id_intersect_group_deliv` BIGINT
, `fk_id_intersect_group_smo_org_type` BIGINT
, `fk_id_intersect_group_proj` BIGINT
, `number_of_innovations` BIGINT
, `updated_date` DATETIME,
primary key (`fk_id_year`, `fk_id_crp`, `fk_id_innovation_info`, `fk_id_innovation_stg`,  `fk_id_innovation_type`,  
 `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,   `fk_id_intersect_group_milestone`,`fk_id_intersect_group_srf_cci`, 
 `fk_id_intersect_group_sdg` , `fk_id_intersect_group_oicr`, `fk_id_intersect_group_deliv`, `fk_id_intersect_group_smo_org_type`,  `fk_id_intersect_group_proj`),
  KEY `idx_fact_fs_tk` (`fk_id_year`, `fk_id_crp`, `fk_id_innovation_info`, `fk_id_innovation_stg`,  `fk_id_innovation_type`,  
 `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,   `fk_id_intersect_group_milestone`,`fk_id_intersect_group_srf_cci`, 
 `fk_id_intersect_group_sdg` , `fk_id_intersect_group_oicr`, `fk_id_intersect_group_deliv`, `fk_id_intersect_group_smo_org_type`, `fk_id_intersect_group_proj`),
  CONSTRAINT `fact_innovations_ibfk_01` FOREIGN KEY (`fk_id_year`) REFERENCES `dim_year` (`pk_id_year`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_02` FOREIGN KEY (`fk_id_innovation_info`) REFERENCES `dim_innovations_info` (`pk_id_innovation_info`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_03` FOREIGN KEY (`fk_id_crp`) REFERENCES `dim_crps` (`pk_id_crp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_04` FOREIGN KEY (`fk_id_intersect_group_loc`) REFERENCES `dim_intersect_group_locations` (`pk_id_intersect_group_loc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_05` FOREIGN KEY (`fk_id_intersect_group_inst`) REFERENCES `dim_intersect_group_institutions` (`pk_id_intersect_group_inst`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_06` FOREIGN KEY (`fk_id_intersect_group_geo`) REFERENCES `dim_intersect_group_geo_scopes` (`pk_id_intersect_group_geo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_07` FOREIGN KEY (`fk_id_innovation_stg`) REFERENCES `dim_innovation_stg` (`pk_id_innovation_stg`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_08` FOREIGN KEY (`fk_id_innovation_type`) REFERENCES `dim_innovation_types` (`pk_id_innovation_type`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_09` FOREIGN KEY (`fk_id_intersect_group_milestone`) REFERENCES `dim_intersect_group_milestones` (`pk_id_intersect_group_milestone`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_10` FOREIGN KEY (`fk_id_intersect_group_srf_cci`) REFERENCES `dim_intersect_group_srf_cci` (`pk_id_intersect_group_srf_cci`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_11` FOREIGN KEY (`fk_id_intersect_group_sdg`) REFERENCES `dim_intersect_group_sdg` (`pk_id_intersect_group_sdg`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_12` FOREIGN KEY (`fk_id_intersect_group_oicr`) REFERENCES `dim_intersect_group_oicrs` (`pk_id_intersect_group_oicr`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_13` FOREIGN KEY (`fk_id_intersect_group_deliv`) REFERENCES `dim_intersect_group_deliverables` (`pk_id_intersect_group_deliv`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_14` FOREIGN KEY (`fk_id_intersect_group_smo_org_type`) REFERENCES `dim_intersect_group_smo_org_types` (`pk_id_intersect_group_smo_org_type`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_innovations_ibfk_15` FOREIGN KEY (`fk_id_intersect_group_proj`) REFERENCES `dim_intersect_group_proj` (`pk_id_intersect_group_proj`) ON DELETE RESTRICT ON UPDATE RESTRICT
  ) ENGINE=InnoDB CHARSET=utf8mb4
;