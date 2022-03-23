drop table if exists `dim_geo_scopes`;

CREATE TABLE `dim_geo_scopes` (
  `pk_id_geo_scope` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `iati_name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`pk_id_geo_scope`),
  KEY `idx_dim_geo_scopes_lookup` (`id`) USING BTREE,
  KEY `idx_dim_geo_scopes_tk` (`pk_id_geo_scope`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
