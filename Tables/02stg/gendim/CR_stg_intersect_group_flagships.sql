drop table if exists stg_intersect_group_flagships;

create table stg_intersect_group_flagships
(flagship_acr_name_group text,
flagship_name_group text,
acronym_group text,
ids_group varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
