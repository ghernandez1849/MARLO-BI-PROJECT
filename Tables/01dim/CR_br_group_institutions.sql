drop table if exists br_group_institutions;

create table br_group_institutions
(
`fk_id_intersect_group_inst` bigint(20) 
,`fk_id_ext_partner` bigint(20) 
,`role_name` varchar(50),
CONSTRAINT `br_group_institutions_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_inst`) REFERENCES `dim_intersect_group_institutions` (`pk_id_intersect_group_inst`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_institutions_ibfk_02` FOREIGN KEY (`fk_id_ext_partner`) REFERENCES `dim_ext_partners` (`pk_id_ext_partner`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


