drop table if exists br_group_milestones;

create table br_group_milestones
(
`fk_id_intersect_group_milestone` bigint(20) 
,`fk_id_milestone_info` bigint(20) 
,`is_primary` int(1)
,`is_primary_description` varchar(4),
CONSTRAINT `br_group_milestones_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_milestone`) REFERENCES `dim_intersect_group_milestones` (`pk_id_intersect_group_milestone`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_milestones_ibfk_02` FOREIGN KEY (`fk_id_milestone_info`) REFERENCES `dim_milestones_info` (`pk_id_milestone_info`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


