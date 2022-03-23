DROP TABLE if exists `stg_br_group_ccm`;

CREATE TABLE `stg_br_group_ccm`
(
  `pk_id_intersect_group_ccm` BIGINT NOT NULL
, `ccm_id` BIGINT 
,  `ccm_focus_level_id` BIGINT
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;