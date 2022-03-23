drop table if exists `pre_summary_indicators_fact`;

CREATE TABLE `pre_summary_indicators_fact` (
  `fk_id_crp` BIGINT not null
, `fk_id_year` BIGINT not null
, `fk_indicator` BIGINT
, `indicator_type` VARCHAR(20)
, `fk_id_intersect_group_milestone` BIGINT not null
, `fk_id_intersect_group_inst` BIGINT not null
, `fk_id_intersect_group_loc` BIGINT not null
, `fk_id_intersect_group_geo` BIGINT not null
, `fk_id_intersect_group_ccm` BIGINT not null
, `fk_id_general_status` BIGINT not null
, `indicator_quantity` DECIMAL(41)  
, `indicator_value` DECIMAL(41)  
) ENGINE=InnoDB CHARSET=utf8;

