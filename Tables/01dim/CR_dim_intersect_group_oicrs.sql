drop table if exists `dim_intersect_group_oicrs`;

create table `dim_intersect_group_oicrs`
(`pk_id_intersect_group_oicr` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `oicr_title_group` TEXT,
  `oicr_compose_title_group` TEXT,
  `ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_oicr`),
KEY `idx_id_intersect_group_oicrs_tk` (`pk_id_intersect_group_oicr`) USING BTREE,
KEY `idx_id_intersect_group_oicrs` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
