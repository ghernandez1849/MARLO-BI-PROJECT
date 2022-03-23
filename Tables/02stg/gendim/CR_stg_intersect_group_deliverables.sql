drop table if exists stg_intersect_group_deliverables;

create table stg_intersect_group_deliverables
(
deliverable_name_group text,
ids_group varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
