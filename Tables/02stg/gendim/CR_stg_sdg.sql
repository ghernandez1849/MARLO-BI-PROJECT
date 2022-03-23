drop table if exists `stg_sdg` ;

CREATE TABLE `stg_sdg` (
  `sdg_id` bigint(20) DEFAULT NULL,
  `sdg_short_name` varchar(100) DEFAULT NULL,
  `sdg_name` text ,
  `sdg_target_id` bigint(20)  DEFAULT NULL,
  `sdg_target_code` varchar(5) DEFAULT NULL,
  `sdg_target_name` text ,
  `sdg_indicator_id` bigint(20)  DEFAULT NULL,
  `sdg_indicator_unsd_code` varchar(45) DEFAULT NULL,
  `sdg_indicator_codes` varchar(45) DEFAULT NULL,
  `sdg_indicator_name` text,
  `sub_ido_id` bigint(20) DEFAULT NULL,
  `sub_ido_code` text,
  `sub_ido_description` text,
  `sdg_icon` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
