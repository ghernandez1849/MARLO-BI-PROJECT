drop table if exists marlobi.stg_pre_group_person;

CREATE TABLE marlobi.stg_pre_group_person
(
  id_phase BIGINT
, ent_id BIGINT
, ent_type VARCHAR(11)
, person_name_group TEXT
, person_email_group TEXT
, person_name_email_group TEXT
, person_affiliation_group TEXT
, ids_group TEXT
, role_name_group TEXT
, partner_person_name_group TEXT
, partner_person_name_email_group TEXT
, partner_person_affiliation_group TEXT
, resp_person_name_group TEXT
, resp_person_name_email_group TEXT
, resp_person_affiliation_group TEXT
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
