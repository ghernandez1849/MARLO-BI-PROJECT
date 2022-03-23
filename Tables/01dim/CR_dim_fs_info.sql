drop table if exists `dim_fs_info`;

create table `dim_fs_info`
(
 `pk_id_fs_info` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id_phase` bigint(20),
  `funding_source_id` bigint(20) ,
  `fs_idname` varchar(20) NOT NULL default "Not Defined",
  `fs_window_name` varchar(255) NOT NULL default "Not Defined",
  `id` bigint(20) ,
  `title` text,
  `description` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `finance_code` text,
  `contact_person_name` text,
  `contact_person_email` text,
  `extended_date` date DEFAULT NULL,
  `is_current` tinyint(1),
  `current_end_date` date,
  `grant_amount` DECIMAL(20, 5),
  `fs_link` text,
   PRIMARY KEY (`pk_id_fs_info`),
  KEY `idx_dim_fs_info_lookup` (`funding_source_id`,`id_phase`) USING BTREE,
  KEY `idx_dim_fs_info_lookup2` (`id`) USING BTREE,
  KEY `idx_dim_fs_info_tk` (`pk_id_fs_info`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

