drop table if exists `dim_smo_org_types`;

CREATE TABLE `dim_smo_org_types` (
  `pk_id_smo_org_type` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` text ,
  `definition` text,
  PRIMARY KEY (`pk_id_smo_org_type`),
  KEY `idx_dim_smo_org_types_lookup` (`id`) USING BTREE,
  KEY `idx_dim_smo_org_types_tk` (`pk_id_smo_org_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
