Drop table if exists  `pre_policies_fact`;

CREATE TABLE `pre_policies_fact`
(
  `fk_id_crp` BIGINT
, `fk_id_year` BIGINT
, `fk_id_policy_info` BIGINT
, `fk_id_pol_inv_type` BIGINT
, `fk_id_projects_info` BIGINT
, `fk_id_stage_processes` BIGINT
, `fk_id_intersect_group_inst` BIGINT
, `fk_id_intersect_group_loc` BIGINT
, `fk_id_intersect_group_geo` BIGINT
, `fk_id_intersect_group_milestone` BIGINT
, `fk_id_intersect_group_srf_cci` BIGINT
, `fk_id_intersect_group_sdg` BIGINT
, `fk_id_intersect_group_ccm` BIGINT
, `fk_id_intersect_group_oicr` BIGINT
, `fk_id_intersect_group_owner` BIGINT not null
, `updated_date` DATETIME
, `quantity` bigint default 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
