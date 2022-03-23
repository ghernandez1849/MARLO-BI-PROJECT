drop table if exists `dim_ext_partners`;

CREATE TABLE `dim_ext_partners` (
  `pk_id_ext_partner` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `acronym` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `website_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `headquarter` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hq_name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `compound_name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
   PRIMARY KEY (`pk_id_ext_partner`),
  KEY `idx_dim_ext_partners_lookup` (`id`) USING BTREE,
  KEY `idx_dim_ext_partners_tk` (`pk_id_ext_partner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
