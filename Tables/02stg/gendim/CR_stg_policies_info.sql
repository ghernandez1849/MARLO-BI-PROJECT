drop table if exists `stg_policies_info`;

CREATE TABLE `stg_policies_info` (
 `id_phase` BIGINT
, `policy_id` BIGINT
, `id` BIGINT
, `policy_title` TEXT
, `policy_description` TEXT
, `global_unit_id` BIGINT
, `rep_ind_stage_process_id` BIGINT
,  `rep_ind_policy_investment_type_id` BIGINT
, `year` INT
, `project_id` BIGINT
, `pdf_url` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

