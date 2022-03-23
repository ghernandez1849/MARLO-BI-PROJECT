drop table if exists `stg_intersect_group_owners`;

CREATE TABLE `stg_intersect_group_owners`
(
  `owner_name_group` TEXT
, `ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;