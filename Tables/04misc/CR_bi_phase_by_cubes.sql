-- This table shoud be in marloDB schema

drop table if exists marloDB.bi_phase_by_cubes;

create table  marloDB.bi_phase_by_cubes
( id bigint(20) NOT NULL AUTO_INCREMENT,
`cube_name` varchar(40),
`phase_name` text,
`phase_year` int(4),
PRIMARY KEY (`id`),
KEY `id` (`id`),
CONSTRAINT `cube_name_uk` unique index `cube_name_uk` (`cube_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
