drop table if exists stg_intersect_group_smo_org_types;

CREATE TABLE `stg_intersect_group_smo_org_types` (
  `smo_org_type_name_group` text,
  `ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
