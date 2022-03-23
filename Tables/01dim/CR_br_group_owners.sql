drop table if exists br_group_owners;

create table br_group_owners
(
`fk_id_intersect_group_owner` bigint(20) 
,`fk_id_policy_owner` bigint(20) ,
CONSTRAINT `br_group_owners_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_owner`) REFERENCES `dim_intersect_group_owners` (`pk_id_intersect_group_owner`) ON DELETE RESTRICT ON UPDATE RESTRICT, 
CONSTRAINT `br_group_owners_ibfk_02` FOREIGN KEY (`fk_id_policy_owner`) REFERENCES `dim_policies_owners` (`pk_id_policy_owner`) ON DELETE RESTRICT ON UPDATE RESTRICT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


