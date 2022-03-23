drop table if EXISTS bi_stg_deliverables_metadata;
create table bi_stg_deliverables_metadata
(
 `id_phase` bigint NOT NULL,  
 `DLV_ID` bigint NOT NULL,
 `DLV_disseminatedTitle` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
 `DLV_disseminatedDate` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
 `DOI` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
 `Handle` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
   KEY `idx_stg_deliverables_metadata_01` (`id_phase`, `DLV_id`)
) engine=InnoDB default charset=utf8;