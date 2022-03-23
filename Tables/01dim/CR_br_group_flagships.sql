drop table if exists br_group_flagships;

create table br_group_flagships
(
`fk_id_intersect_group_flag` bigint(20) 
,`fk_id_flagship` bigint(20),
CONSTRAINT `br_group_flagships_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_flag`) REFERENCES `dim_intersect_group_flagships` (`pk_id_intersect_group_flag`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_flagships_ibfk_02` FOREIGN KEY (`fk_id_flagship`) REFERENCES `dim_flagships` (`pk_id_flagship`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


