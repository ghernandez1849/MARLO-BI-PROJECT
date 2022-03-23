drop table if exists pre_oicrs_fact;

CREATE TABLE pre_oicrs_fact
(
  `fk_id_crp` BIGINT
, `fk_id_year` BIGINT
, `fk_id_stg_maturities` BIGINT
, `fk_id_oicr_info` BIGINT
, `fk_id_intersect_group_milestone` BIGINT
, `fk_id_intersect_group_sdg` BIGINT
, `fk_id_intersect_group_srf_cci` BIGINT
, `fk_id_intersect_group_srftar` BIGINT
, `fk_id_intersect_group_inst` BIGINT
, `fk_id_intersect_group_loc` BIGINT
, `fk_id_intersect_group_geo` BIGINT
, `fk_id_intersect_group_flag` BIGINT
, `fk_id_intersect_group_ccm` BIGINT
, `fk_id_intersect_group_proj` BIGINT
, `fk_id_general_status` BIGINT
, `updated_date` DATETIME
, `quantity` bigint
) ENGINE=InnoDB CHARSET=utf8
;
