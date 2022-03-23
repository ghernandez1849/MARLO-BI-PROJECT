drop table if exists `dim_intersect_group_milestones`;

create table `dim_intersect_group_milestones`
(`pk_id_intersect_group_milestone` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `milestone_title_group` TEXT,
 `outcome_description_group` TEXT,
  `ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_milestone`),
KEY `idx_id_intersect_group_milestones_tk` (`pk_id_intersect_group_milestone`) USING BTREE,
KEY `idx_id_intersect_group_milestones` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
