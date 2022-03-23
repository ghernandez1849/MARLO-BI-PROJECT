drop table if exists br_group_ccm;

create table br_group_ccm
(
`fk_id_intersect_group_ccm` bigint(20) 
,`fk_id_ccm` bigint(20),
 CONSTRAINT `br_group_ccm_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_ccm`) REFERENCES `dim_intersect_group_ccm` (`pk_id_intersect_group_ccm`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
 CONSTRAINT `br_group_ccm_ibfk_02` FOREIGN KEY (`fk_id_ccm`) REFERENCES `dim_cross_cutting_markers` (`pk_id_ccm`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


