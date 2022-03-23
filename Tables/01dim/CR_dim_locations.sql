drop table if exists `dim_locations`;

CREATE TABLE `dim_locations` (
  `pk_id_location` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `country_id` varchar(23) DEFAULT NULL,
  `country_name` text,
  `iso_alpha_2` varchar(45) DEFAULT NULL,
  `iso_numeric` varchar(20) DEFAULT NULL,
  `reg_un_id` varchar(20) DEFAULT NULL,
  `reg_un_name` text,
  `reg_iati_id` varchar(20) DEFAULT NULL,
  `reg_iati_name` text,
  `id` bigint(20) ,
  `loc_element_type` varchar(20) DEFAULT NULL,
  `iso_alpha_3` varchar(45) DEFAULT NULL,
  `latitude` varchar(20),
  `longitude` varchar(20),
  PRIMARY KEY (`pk_id_location`),
  KEY `idx_dim_locations_lookup` (`country_id`) USING BTREE,
  KEY `idx_dim_locations_lookup2` (`id`) USING BTREE,
  KEY `idx_dim_locations_tk` (`pk_id_location`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
