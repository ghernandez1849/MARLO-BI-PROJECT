drop table if exists `stg_oicrs_info`;

CREATE TABLE `stg_oicrs_info` (
 `id_phase` BIGINT
, `oicr_id` BIGINT
, `id` BIGINT
, `oicr_title` TEXT
, `oicr_scope_comments` TEXT
, `oicr_outcome_impact_statement` TEXT
, `global_unit_id` BIGINT
, `status` BIGINT
, `rep_ind_stage_study_id` BIGINT
, `year` INT
, `external_link` TEXT
, `is_public` tinyint(1)
, `oicr_link` TINYTEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

