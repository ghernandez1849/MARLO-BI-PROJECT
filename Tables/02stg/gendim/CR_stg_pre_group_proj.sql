drop table if exists stg_pre_group_proj;

CREATE TABLE stg_pre_group_proj
(
  `id_phase` BIGINT NOT NULL
, `ent_type` VARCHAR(20) NOT NULL
, `ent_id` BIGINT NOT NULL
, `owner_project_id_group` TEXT
, `shared_project_id_group` TEXT
, `owner_composed_project_id_group` TEXT
, `shared_composed_project_id_group` TEXT
, `project_title_group` TEXT 
, `owner_project_title_group` TEXT 
, `shared_project_title_group` TEXT 
, `project_id_group` TEXT
, `ids_group` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;