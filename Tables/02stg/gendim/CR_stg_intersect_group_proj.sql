drop table if exists `stg_intersect_group_proj`;


CREATE TABLE `stg_intersect_group_proj`
(
 `owner_project_id_group` TEXT
, `shared_project_id_group` TEXT
, `owner_composed_project_id_group` TEXT
, `shared_composed_project_id_group` TEXT
, `project_title_group` TEXT 
, `owner_project_title_group` TEXT 
, `shared_project_title_group` TEXT 
, `project_id_group` TEXT
, `ids_group` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

