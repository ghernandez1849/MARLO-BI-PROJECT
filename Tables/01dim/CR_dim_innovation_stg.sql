drop table if exists `dim_innovation_stg` ;

CREATE TABLE `dim_innovation_stg` (
  `pk_id_innovation_stg` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`pk_id_innovation_stg`),
  KEY `idx_dim_innovation_stg_lookup` (`id`) USING BTREE,
  KEY `idx_dim_innovation_stg_tk` (`pk_id_innovation_stg`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
