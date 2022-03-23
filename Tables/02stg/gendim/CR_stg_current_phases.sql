drop table if exists `stg_current_phases`;

CREATE TABLE `stg_current_phases` (
  global_unit_id	bigint not null
  , parameter_id	bigint not null
  , current_phase 	bigint not null
  , phase_description text
  , phase_name text
  , phase_year int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
