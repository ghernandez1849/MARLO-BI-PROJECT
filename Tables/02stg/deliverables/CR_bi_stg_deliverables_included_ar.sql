drop table if EXISTS bi_stg_deliverables_included_ar;
create table bi_stg_deliverables_included_ar
(
 `id_phase` bigint NOT NULL,  
 `DLV_ID` bigint NOT NULL,
 `Included_AR` varchar(10) DEFAULT NULL,
   KEY `idx_stg_deliverables_included_ar_01` (`id_phase`, `DLV_id`)
) engine=InnoDB default charset=utf8;