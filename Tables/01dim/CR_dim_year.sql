drop table if exists dim_year;

CREATE TABLE marloBI.dim_year
(
  pk_id_year BIGINT NOT NULL 
, version INT
, date_from DATETIME
, date_to DATETIME
, year BIGINT
, year_yy VARCHAR(4)
, start_date DATETIME
, end_date DATETIME
, PRIMARY KEY (`pk_id_year`),
  KEY `idx_dim_year_lookup` (`year`) ,
  KEY `idx_dim_year_tk` (`pk_id_year`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
