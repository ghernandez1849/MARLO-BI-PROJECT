drop table if exists `dim_intersect_group_owners`;

create table `dim_intersect_group_owners`
(`pk_id_intersect_group_owner` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `owner_name_group` TEXT,
  `ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_owner`),
KEY `idx_id_intersect_group_owners_tk` (`pk_id_intersect_group_owner`) USING BTREE,
KEY `idx_id_intersect_group_owners` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
