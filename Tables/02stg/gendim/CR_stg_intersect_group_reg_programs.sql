drop table if exists `stg_intersect_group_reg_programs`;

create table `stg_intersect_group_reg_programs`
(`regional_program_acr_name_group` text,
`regional_program_name_group` text,
`regional_program_acronym_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

