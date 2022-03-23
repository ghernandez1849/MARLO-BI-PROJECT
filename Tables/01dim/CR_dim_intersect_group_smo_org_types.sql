drop table if exists dim_intersect_group_smo_org_types;

create table dim_intersect_group_smo_org_types
(`pk_id_intersect_group_smo_org_type` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
smo_org_type_name_group text,
ids_group varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_smo_org_type`),
KEY `idx_id_intersect_group_smo_org_type_tk` (`pk_id_intersect_group_smo_org_type`) USING BTREE,
KEY `idx_id_group_intersect_group_smo_org_type` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
