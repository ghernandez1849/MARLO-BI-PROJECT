drop table if exists stg_pre_group_reg_programs;

create table stg_pre_group_reg_programs
(
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`id_phase` bigint(20) DEFAULT NULL,
`regional_program_acr_name_group` text,
`regional_program_name_group` text,
`regional_program_acronym_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
