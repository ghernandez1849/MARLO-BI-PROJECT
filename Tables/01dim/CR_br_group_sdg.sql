drop table if exists br_group_sdg;

create table br_group_sdg
(
`fk_id_intersect_group_sdg` bigint(20) 
,`fk_id_sdg` bigint(20), 
CONSTRAINT `br_group_sdg_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_sdg`) REFERENCES `dim_intersect_group_sdg` (`pk_id_intersect_group_sdg`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_sdg_ibfk_02` FOREIGN KEY (`fk_id_sdg`) REFERENCES `dim_sdg` (`pk_id_sdg`) ON DELETE RESTRICT ON UPDATE RESTRICT  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


