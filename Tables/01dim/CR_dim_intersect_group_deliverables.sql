
drop table if exists dim_intersect_group_deliverables;

create table dim_intersect_group_deliverables
(`pk_id_intersect_group_deliv` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
deliverable_name_group text,
ids_group varchar(2000) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_deliv`),
KEY `idx_id_intersect_group_deliverable_tk` (`pk_id_intersect_group_deliv`) USING BTREE,
KEY `idx_id_group_intersect_group_deliverable` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
