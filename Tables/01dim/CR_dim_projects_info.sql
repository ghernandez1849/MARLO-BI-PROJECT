drop table if exists dim_projects_info;

CREATE TABLE marloBI.dim_projects_info
(
  pk_id_projects_info BIGINT NOT NULL 
, version INT
, date_from DATETIME
, date_to DATETIME
, `id` bigint(20) 
, `title` text
, `project_id` bigint(20) 
, `summary` text
, `start_date` date DEFAULT NULL
, `end_date` date DEFAULT NULL
, `id_phase` bigint(20) DEFAULT NULL
, `pid_name` varchar(20)
, `project_link` text
, `composed_title` text
, PRIMARY KEY (`pk_id_projects_info`),
  KEY `idx_dim_projects_info_lookup` (`project_id`, `id_phase`) ,
  KEY `idx_dim_projects_info_tk` (`pk_id_projects_info`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
