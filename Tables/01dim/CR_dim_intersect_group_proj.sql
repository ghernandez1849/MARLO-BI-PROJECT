drop table if exists `dim_intersect_group_proj`;

create table `dim_intersect_group_proj`
(`pk_id_intersect_group_proj` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `owner_project_id_group` TEXT,
 `shared_project_id_group` TEXT,
 `owner_composed_project_id_group` TEXT,
 `shared_composed_project_id_group` TEXT,
 `project_title_group` TEXT,
 `owner_project_title_group` TEXT, 
 `shared_project_title_group` TEXT, 
 `project_id_group` TEXT,
 `ids_group` varchar(768) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_proj`),
KEY `idx_id_intersect_group_proj_tk` (`pk_id_intersect_group_proj`) USING BTREE,
KEY `idx_id_intersect_group_proj` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

