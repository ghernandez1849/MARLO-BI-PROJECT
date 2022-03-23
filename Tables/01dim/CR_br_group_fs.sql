drop table if exists br_group_fs;

create table br_group_fs
(
`fk_id_intersect_group_fs` bigint(20) 
,`fk_id_fs_info` bigint(20) ,
CONSTRAINT `br_group_fs_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_fs`) REFERENCES `dim_intersect_group_fs` (`pk_id_intersect_group_fs`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_fs_ibfk_02` FOREIGN KEY (`fk_id_fs_info`) REFERENCES `dim_fs_info` (`pk_id_fs_info`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


