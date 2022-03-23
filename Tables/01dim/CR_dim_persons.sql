drop table if exists `dim_persons`;

CREATE TABLE marlobi.dim_persons
(
  pk_id_person BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, id BIGINT
, first_name VARCHAR(255)
, last_name VARCHAR(255)
, full_name TEXT
, username VARCHAR(255)
, email VARCHAR(255)
)
;CREATE INDEX idx_dim_persons_lookup ON marlobi.dim_persons(id)
;
CREATE INDEX idx_dim_persons_tk ON marlobi.dim_persons(pk_id_person)
;
