drop table if EXISTS bi_stg_included_annual_report;

create table bi_stg_included_annual_report
(
 `id_phase` bigint NOT NULL,  
 `DLV_ID` bigint NOT NULL,
 `Included_AR` varchar(10) DEFAULT NULL
) engine=innodb default charset=utf8;