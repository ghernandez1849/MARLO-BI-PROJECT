drop table if exists pre_melias_fact;

CREATE TABLE pre_melias_fact
(
  `fk_id_crp` BIGINT
, `fk_id_year` BIGINT
, `fk_id_study_type` BIGINT
, `fk_id_melia_info` BIGINT
, `fk_id_intersect_group_sdg` BIGINT
, `fk_id_intersect_group_srf_cci` BIGINT
, `fk_id_intersect_group_srftar` BIGINT
, `fk_id_intersect_group_loc` BIGINT
, `fk_id_intersect_group_geo` BIGINT
, `fk_id_intersect_group_proj` BIGINT
, `fk_id_general_status` BIGINT
, `updated_date` DATETIME
, `quantity` bigint
) ENGINE=InnoDB CHARSET=utf8mb4
;
