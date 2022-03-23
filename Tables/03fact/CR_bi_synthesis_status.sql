drop table if exists `bi_synthesis_status`;

CREATE TABLE `bi_synthesis_status` (
  `crp` varchar(50) NOT NULL,
  `FP` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL DEFAULT '0',
   section_id bigint(20) NOT NULL DEFAULT '0',
  `section_name` varchar(255) NOT NULL COMMENT 'Some section name (would be the action name)',
  `missing_fields` mediumtext COMMENT 'The list of missing fields per section',
  `Section status` varchar(10) NOT NULL DEFAULT '',
  `submitted_numeric` decimal(2,0) NOT NULL,
  `Submitted/Unsubmitted` varchar(28) NOT NULL DEFAULT '',
  `Submission Date` varchar(34) DEFAULT NULL,
  `Submission Justification` longtext,
  `Unsubmission Justification` longtext,
  `last_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

