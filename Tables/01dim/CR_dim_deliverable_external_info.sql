Drop table if exists `dim_deliverable_external_info`;

CREATE TABLE marlobi.dim_deliverable_external_info
(
  pk_id_deliverable_external_info BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, deliverable_id BIGINT
, phase_id BIGINT
, source TEXT
, url TEXT
, doi TEXT
, title TEXT
, publication_type TEXT
, publication_year INT
, is_open_access TEXT
, open_access_link TEXT
, is_isi TEXT
, journal_name TEXT
, volume TEXT
, pages TEXT
, gardian_findability TEXT
, gardian_accessibility TEXT
, gardian_interoperability TEXT
, gardian_reusability TEXT
, gardian_title TEXT
)
;CREATE INDEX idx_dim_deliverable_external_info_lookup ON marlobi.dim_deliverable_external_info(deliverable_id)
;
CREATE INDEX idx_dim_deliverable_external_info_tk ON marlobi.dim_deliverable_external_info(pk_id_deliverable_external_info)
;