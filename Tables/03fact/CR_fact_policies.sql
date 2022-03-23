Drop table if exists  `fact_policies`;

CREATE TABLE `fact_policies`
(
  `fk_id_year` BIGINT not null
, `fk_id_crp` BIGINT not null
, `fk_id_policy_info` BIGINT not null
, `fk_id_pol_inv_type` BIGINT not null
, `fk_id_projects_info` BIGINT not null
, `fk_id_stage_processes` BIGINT not null
, `fk_id_intersect_group_loc` BIGINT not null
, `fk_id_intersect_group_inst` BIGINT not null
, `fk_id_intersect_group_geo` BIGINT not null
, `fk_id_intersect_group_milestone` BIGINT not null
, `fk_id_intersect_group_srf_cci` BIGINT not null
, `fk_id_intersect_group_sdg` BIGINT not null
, `fk_id_intersect_group_ccm` BIGINT not null
, `fk_id_intersect_group_oicr` BIGINT not null
, `fk_id_intersect_group_owner` BIGINT not null
, `updated_date` DATETIME not null
, `quantity` bigint default 1 ,
primary key (`fk_id_year`, `fk_id_crp`, `fk_id_policy_info`, `fk_id_pol_inv_type`,  `fk_id_projects_info`,  `fk_id_stage_processes`,
 `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,   `fk_id_intersect_group_milestone`,`fk_id_intersect_group_srf_cci`, 
 `fk_id_intersect_group_sdg` , `fk_id_intersect_group_ccm`, `fk_id_intersect_group_oicr`),
  KEY `idx_fact_fs_tk` (`fk_id_year`, `fk_id_crp`, `fk_id_policy_info`, `fk_id_pol_inv_type`,  `fk_id_projects_info`,  `fk_id_stage_processes`,
 `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,   `fk_id_intersect_group_milestone`,`fk_id_intersect_group_srf_cci`, 
 `fk_id_intersect_group_sdg` , `fk_id_intersect_group_ccm`, `fk_id_intersect_group_oicr`),
 CONSTRAINT `fact_policies_ibfk_01` FOREIGN KEY (`fk_id_year`) REFERENCES `dim_year` (`pk_id_year`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_02` FOREIGN KEY (`fk_id_policy_info`) REFERENCES `dim_policies_info` (`pk_id_policy_info`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_03` FOREIGN KEY (`fk_id_crp`) REFERENCES `dim_crps` (`pk_id_crp`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_04` FOREIGN KEY (`fk_id_intersect_group_loc`) REFERENCES `dim_intersect_group_locations` (`pk_id_intersect_group_loc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_05` FOREIGN KEY (`fk_id_intersect_group_inst`) REFERENCES `dim_intersect_group_institutions` (`pk_id_intersect_group_inst`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_06` FOREIGN KEY (`fk_id_intersect_group_geo`) REFERENCES `dim_intersect_group_geo_scopes` (`pk_id_intersect_group_geo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_07` FOREIGN KEY (`fk_id_stage_processes`) REFERENCES `dim_stage_processes` (`pk_id_stage_processes`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_09` FOREIGN KEY (`fk_id_intersect_group_milestone`) REFERENCES `dim_intersect_group_milestones` (`pk_id_intersect_group_milestone`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_10` FOREIGN KEY (`fk_id_intersect_group_srf_cci`) REFERENCES `dim_intersect_group_srf_cci` (`pk_id_intersect_group_srf_cci`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_11` FOREIGN KEY (`fk_id_intersect_group_sdg`) REFERENCES `dim_intersect_group_sdg` (`pk_id_intersect_group_sdg`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_12` FOREIGN KEY (`fk_id_intersect_group_oicr`) REFERENCES `dim_intersect_group_oicrs` (`pk_id_intersect_group_oicr`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_13` FOREIGN KEY (`fk_id_intersect_group_ccm`) REFERENCES `dim_intersect_group_ccm` (`pk_id_intersect_group_ccm`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_14` FOREIGN KEY (`fk_id_pol_inv_type`) REFERENCES `dim_policy_investment_types` (`pk_id_pol_inv_type`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fact_policies_ibfk_15` FOREIGN KEY (`fk_id_intersect_group_owner`) REFERENCES `dim_intersect_group_owners` (`pk_id_intersect_group_owner`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
