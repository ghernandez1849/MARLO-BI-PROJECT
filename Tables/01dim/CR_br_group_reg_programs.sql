drop table if exists br_group_reg_programs;

create table br_group_reg_programs
(
`fk_id_intersect_group_regpr` bigint(20) 
,`fk_id_regional_program` bigint(20), 
CONSTRAINT `br_group_reg_programs_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_regpr`) REFERENCES `dim_intersect_group_reg_programs` (`pk_id_intersect_group_regpr`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_reg_programs_ibfk_02` FOREIGN KEY (`fk_id_regional_program`) REFERENCES `dim_regional_programs` (`pk_id_regional_program`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


