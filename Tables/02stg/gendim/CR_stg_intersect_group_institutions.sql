drop table if exists `stg_intersect_group_institutions`;

create table `stg_intersect_group_institutions`
(`institution_acr_name_group` text,
`institution_name_group` text,
`acronym_group` text,
`role_name_group` text,
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
`ids_group` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
