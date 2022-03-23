drop table if exists br_group_geo_scopes;

create table br_group_geo_scopes
(
`fk_id_intersect_group_geo` bigint(20) 
,`fk_id_geo_scope` bigint(20) ,
CONSTRAINT `br_group_geo_scopes_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_geo`) REFERENCES `dim_intersect_group_geo_scopes` (`pk_id_intersect_group_geo`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_geo_scopes_ibfk_02` FOREIGN KEY (`fk_id_geo_scope`) REFERENCES `dim_geo_scopes` (`pk_id_geo_scope`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


