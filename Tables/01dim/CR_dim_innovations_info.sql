drop table if exists `dim_innovations_info`;

CREATE TABLE `dim_innovations_info` (
  `pk_id_innovation_info` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `project_innovation_id` bigint(20) DEFAULT NULL,
  `title` text ,
  `narrative` text ,
  `id_phase` bigint(20),
  `description_stage` text,
  `evidence_link` text,
  `pdf` varchar(500) DEFAULT NULL,
  `url_link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`pk_id_innovation_info`),
  KEY `idx_dim_innovations_info_lookup` (`project_innovation_id`) USING BTREE,
  KEY `idx_dim_innovations_info_tk` (`pk_id_innovation_info`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
