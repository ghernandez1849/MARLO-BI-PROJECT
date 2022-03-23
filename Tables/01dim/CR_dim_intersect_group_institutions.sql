drop table if exists `dim_intersect_group_institutions`;

create table `dim_intersect_group_institutions`
(`pk_id_intersect_group_inst` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
`institution_acr_name_group` text,
`institution_name_group` text,
`role_name_group` text,
`acronym_group` text,
`partner_institution_acr_name_group` text,
`partner_institution_name_group` text,
`partner_acronym_group` text,
`direct_donor_institution_acr_name_group` text,
`direct_donor_institution_name_group` text,
`direct_donor_acronym_group` text,
`original_donor_institution_acr_name_group` text,
`original_donor_institution_name_group` text,
`original_donor_acronym_group` text,
`lead_institution_acr_name_group` text,
`lead_institution_name_group` text,
`lead_acronym_group` text,
`ids_group` varchar(1000) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_inst`),
KEY `idx_id_intersect_group_inst_tk` (`pk_id_intersect_group_inst`) USING BTREE,
KEY `idx_id_group_intersect_group_inst` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
