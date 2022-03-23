drop table if exists br_group_smo_org_types;

create table br_group_smo_org_types
(
`fk_id_intersect_group_smo_org_type` bigint(20) 
,`fk_id_smo_org_type` bigint(20), 
CONSTRAINT `br_group_smo_org_types_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_smo_org_type`) REFERENCES `dim_intersect_group_smo_org_types` (`pk_id_intersect_group_smo_org_type`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_smo_org_types_ibfk_02` FOREIGN KEY (`fk_id_smo_org_type`) REFERENCES `dim_smo_org_types` (`pk_id_smo_org_type`) ON DELETE RESTRICT ON UPDATE RESTRICT  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


