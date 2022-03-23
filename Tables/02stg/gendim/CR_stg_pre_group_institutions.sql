drop table if exists stg_pre_group_institutions;

create table stg_pre_group_institutions
(
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`id_phase` bigint(20) DEFAULT NULL,
`institution_acr_name_group` text,
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
