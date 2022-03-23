drop table if exists dim_intersect_group_geo_scopes;

create table dim_intersect_group_geo_scopes
(`pk_id_intersect_group_geo` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
geo_scope_name_group text,
ids_group varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_geo`),
KEY `idx_id_intersect_group_geo_tk` (`pk_id_intersect_group_geo`) USING BTREE,
KEY `idx_id_group_intersect_group_geo` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
