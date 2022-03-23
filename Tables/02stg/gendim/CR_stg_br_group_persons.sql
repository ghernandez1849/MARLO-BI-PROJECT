DROP TABLE if exists marloBI.`stg_br_group_persons`;

CREATE TABLE marlobi.stg_br_group_persons
(
  pk_id_intersect_group_persons BIGINT
, person_id INT
, role_name VARCHAR(15)
, ids_group TEXT
)
;