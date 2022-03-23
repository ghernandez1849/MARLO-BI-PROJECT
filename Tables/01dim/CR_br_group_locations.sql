drop table if exists `br_group_locations`;

create table `br_group_locations`
(
`fk_id_intersect_group_loc` bigint(20) 
,`fk_id_location` bigint(20) ,
CONSTRAINT `br_group_locations_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_loc`) REFERENCES `dim_intersect_group_locations` (`pk_id_intersect_group_loc`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_locations_ibfk_02` FOREIGN KEY (`fk_id_location`) REFERENCES `dim_locations` (`pk_id_location`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


