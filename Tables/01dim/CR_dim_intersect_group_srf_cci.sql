drop table if exists dim_intersect_group_srf_cci;

create table dim_intersect_group_srf_cci
(`pk_id_intersect_group_srf_cci` bigint(20) NOT NULL,
 `version` int(11) DEFAULT NULL,
 `date_from` datetime DEFAULT NULL,
 `date_to` datetime DEFAULT NULL,
 `slo_cci_title_group` text,
 `slo_cci_smo_code_group` text,
 `slo_cci_ido_description_group` text,
 `slo_cci_sido_description_group` text,
--
 `slo_title_group` text,
 `slo_smo_code_group` text,
 `slo_ido_description_group` text,
 `slo_sido_description_group` text,
--
 `cci_title_group` text,
 `cci_smo_code_group` text,
 `cci_ido_description_group` text,
 `cci_sido_description_group` text,
--
 `slo_cci_ido_sido_description_group` TEXT,
 `cci_ido_sido_description_group` TEXT,
 `slo_ido_sido_description_group` TEXT,
--
 `ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_srf_cci`),
KEY `idx_id_intersect_group_srf_tk` (`pk_id_intersect_group_srf_cci`) USING BTREE,
KEY `idx_id_intersect_group_srf` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
