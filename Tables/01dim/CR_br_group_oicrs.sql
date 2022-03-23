drop table if exists br_group_oicrs;

create table br_group_oicrs
(
`fk_id_intersect_group_oicr` bigint(20) 
,`fk_id_oicr_info` bigint(20) ,
CONSTRAINT `br_group_oicrs_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_oicr`) REFERENCES `dim_intersect_group_oicrs` (`pk_id_intersect_group_oicr`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_oicrs_ibfk_02` FOREIGN KEY (`fk_id_oicr_info`) REFERENCES `dim_oicrs_info` (`pk_id_oicr_info`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
