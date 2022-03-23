drop table if exists br_group_srf_targets;

create table br_group_srf_targets
(
`fk_id_intersect_group_srftar` bigint(20) 
,`fk_id_srf_target` bigint(20), 
CONSTRAINT `br_group_srf_targets_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_srftar`) REFERENCES `dim_intersect_group_srf_targets` (`pk_id_intersect_group_srftar`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_srf_targets_types_ibfk_02` FOREIGN KEY (`fk_id_srf_target`) REFERENCES `dim_srf_targets` (`pk_id_srf_target`) ON DELETE RESTRICT ON UPDATE RESTRICT  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


