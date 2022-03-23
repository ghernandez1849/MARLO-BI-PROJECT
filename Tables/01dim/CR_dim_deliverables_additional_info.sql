Drop table if exists `dim_deliverables_additional_info`;

CREATE TABLE marloBI.dim_deliverables_additional_info
(
  pk_id_deliverable_additional_info BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, deliverable_id BIGINT
, id_phase BIGINT
, global_unit_id BIGINT
, project_id BIGINT
, has_participants VARCHAR(3)
, activity_name TEXT
, activity_type TEXT
, participants DOUBLE
, females DOUBLE
, participant_type TEXT
, language TEXT
, country TEXT
, keywords TEXT
, publication_acknowledge VARCHAR(14)
, findable  varchar(50)
, accesible  varchar(50)
, interoperable  varchar(50)
, reusable  varchar(50)
)
;CREATE INDEX idx_dim_deliverables_additional_info_lookup ON marloBI.dim_deliverables_additional_info(deliverable_id)
;
CREATE INDEX idx_dim_deliverables_additional_info_tk ON marloBI.dim_deliverables_additional_info(pk_id_deliverable_additional_info)
;
