drop table if exists `dim_intersect_group_persons`;

CREATE TABLE marlobi.dim_intersect_group_persons
(
  pk_id_intersect_group_persons BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, ids_group varchar(500)
, person_name_group TEXT
, person_email_group TEXT
, person_name_email_group TEXT
, person_affiliation_group TEXT
, role_name_group TEXT
, partner_person_name_group TEXT
, partner_person_name_email_group TEXT
, partner_person_affiliation_group TEXT
, resp_person_name_group TEXT
, resp_person_name_email_group TEXT
, resp_person_affiliation_group TEXT
)
;CREATE INDEX idx_dim_intersect_group_persons_lookup ON marlobi.dim_intersect_group_persons(ids_group)
;
CREATE INDEX idx_dim_intersect_group_persons_tk ON marlobi.dim_intersect_group_persons(pk_id_intersect_group_persons)
;
