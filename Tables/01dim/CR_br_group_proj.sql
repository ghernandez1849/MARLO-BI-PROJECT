drop table if exists br_group_proj;

create table br_group_proj
(
`fk_id_intersect_group_proj` bigint(20) 
,`fk_id_projects_info` bigint(20) 
, is_owner INT(1),
CONSTRAINT `br_group_proj_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_proj`) REFERENCES `dim_intersect_group_proj` (`pk_id_intersect_group_proj`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_proj_ibfk_02` FOREIGN KEY (`fk_id_projects_info`) REFERENCES `dim_projects_info` (`pk_id_projects_info`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

