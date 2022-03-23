drop table if exists br_group_crps;

create table br_group_crps
(
`fk_id_intersect_group_crp` bigint(20) 
,`fk_id_crp` bigint(20) 
,`crp_role_name` varchar(50) ,
CONSTRAINT `br_group_crps_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_crp`) REFERENCES `dim_intersect_group_crps` (`pk_id_intersect_group_crp`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_crps_ibfk_02` FOREIGN KEY (`fk_id_crp`) REFERENCES `dim_crps` (`pk_id_crp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


