drop table if exists stg_deliverable_external_info ;

CREATE TABLE `stg_deliverable_external_info` (
  `deliverable_id` bigint(20) DEFAULT NULL,
  `phase_id` bigint(20) DEFAULT NULL,
  `source` text,
  `url` text,
  `doi` text,
  `title` text,
  `publication_type` text,
  `publication_year` int(11) DEFAULT NULL,
  `is_open_access` text,
  `open_access_link` text,
  `is_isi` text,
  `journal_name` text,
  `volume` text,
  `pages` text,
  `gardian_findability` text,
  `gardian_accessibility` text,
  `gardian_interoperability` text,
  `gardian_reusability` text,
  `gardian_title` text
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


