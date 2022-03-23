drop table if exists `fact_deliverables`;

CREATE TABLE `fact_deliverables` (
  `fk_id_crp` BIGINT not null
, `fk_id_year` BIGINT not null
, `fk_id_deliverable_info` BIGINT not null
, `fk_id_intersect_group_inst` BIGINT not null
, `fk_id_intersect_group_loc` BIGINT not null
, `fk_id_intersect_group_geo` BIGINT not null
, `fk_id_intersect_group_flag` BIGINT not null
, `fk_id_intersect_group_ccm` BIGINT not null
, `fk_id_intersect_group_proj` BIGINT not null
, `quantity` bigint
, `updated_date` DATETIME,
  primary key (`fk_id_year`, `fk_id_deliverable_info`, `fk_id_crp`, `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,
 `fk_id_intersect_group_flag`, `fk_id_intersect_group_ccm`, `fk_id_intersect_group_proj` ),
  KEY `idx_fact_deliverables_tk` (`fk_id_year`, `fk_id_deliverable_info`, `fk_id_crp`, `fk_id_intersect_group_loc`, `fk_id_intersect_group_inst`, `fk_id_intersect_group_geo`,
 `fk_id_intersect_group_flag`, `fk_id_intersect_group_ccm`, `fk_id_intersect_group_proj` )
) ENGINE=InnoDB CHARSET=utf8mb4;
