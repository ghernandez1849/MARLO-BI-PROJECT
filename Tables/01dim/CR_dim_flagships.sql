drop table if exists `dim_flagships`;


CREATE TABLE `dim_flagships` (
  `pk_id_flagship` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `acronym` varchar(50) DEFAULT NULL,
  `name` text,
  `crp_id` bigint(20) DEFAULT NULL,
  `flagship_crp_acronym` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pk_id_flagship`),
  KEY `idx_dim_flagships_lookup` (`id`) USING BTREE,
  KEY `idx_dim_flagships_tk` (`pk_id_flagship`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
