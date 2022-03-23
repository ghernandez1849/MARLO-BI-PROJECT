drop table if exists `pre_innovations_fact`;

CREATE TABLE `pre_innovations_fact`
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
, `updated_date` DATETIME
) ENGINE=InnoDB CHARSET=utf8mb4
;