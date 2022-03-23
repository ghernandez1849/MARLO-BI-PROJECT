drop table if exists `stg_melias_info`;

CREATE TABLE `stg_melias_info` (
 `id_phase` BIGINT
, `melia_id` BIGINT
, `id` BIGINT
, `melia_title` TEXT
, `melia_scope_comments` TEXT
, `melia_outcome_impact_statement` TEXT
, `global_unit_id` BIGINT
, `status` BIGINT
, `study_type_id` BIGINT
, `year` INT
, `external_link` TEXT
, `is_public` tinyint(1)
, `melia_description` TEXT
, `commissioning_study` TEXT
, `melia_link` TINYTEXT
, pdf_url TINYTEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

