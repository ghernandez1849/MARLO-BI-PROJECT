drop table if exists stg_intersect_group_geo_scopes;

CREATE TABLE `stg_intersect_group_geo_scopes` (
  `geo_scope_name_group` text,
  `ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
