drop table if exists `dim_stg_maturities`;

CREATE TABLE `dim_stg_maturities` (
  `pk_id_stg_maturities` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`pk_id_stg_maturities`),
  KEY `idx_dim_stg_maturities_lookup` (`id`) USING BTREE,
  KEY `idx_dim_stg_maturities_tk` (`pk_id_stg_maturities`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
