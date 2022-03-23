drop table if exists br_group_srf_cci;

create table br_group_srf_cci
(
`fk_id_intersect_group_srf_cci` bigint(20) 
,`fk_id_srf_cci` bigint(20) 
,`is_primary` int(1) DEFAULT 0
, `is_primary_description` varchar(4), 
CONSTRAINT `br_group_srf_cci_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_srf_cci`) REFERENCES `dim_intersect_group_srf_cci` (`pk_id_intersect_group_srf_cci`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_srf_cci_types_ibfk_02` FOREIGN KEY (`fk_id_srf_cci`) REFERENCES `dim_srf_cci` (`pk_id_srf_cci`) ON DELETE RESTRICT ON UPDATE RESTRICT  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

