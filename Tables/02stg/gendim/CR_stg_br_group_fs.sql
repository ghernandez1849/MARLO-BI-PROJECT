DROP TABLE if exists marloBI.`stg_br_group_fs`;

CREATE TABLE marloBI.`stg_br_group_fs`
(
  `pk_id_intersect_group_fs` BIGINT NOT NULL
, `fs_id` BIGINT NOT NULL
,`ids_group` varchar(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;