drop table if exists br_group_deliverables;

create table br_group_deliverables
(
`fk_id_intersect_group_deliv` bigint(20) 
,`fk_id_deliverable_info` bigint(20) ,
CONSTRAINT `br_group_deliverables_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_deliv`) REFERENCES `dim_intersect_group_deliverables` (`pk_id_intersect_group_deliv`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_deliverables_ibfk_02` FOREIGN KEY (`fk_id_deliverable_info`) REFERENCES `dim_deliverables_info` (`pk_id_deliverable_info`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


