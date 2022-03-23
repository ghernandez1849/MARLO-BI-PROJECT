DROP TABLE if EXISTS `stg_geo_scopes` ;

CREATE TABLE `stg_geo_scopes` (
  `id` bigint(20) DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `iati_name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `definition` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
