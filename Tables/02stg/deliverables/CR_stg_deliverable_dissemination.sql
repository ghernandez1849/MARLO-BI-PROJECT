drop table if exists `stg_deliverable_dissemination`;

CREATE TABLE `stg_deliverable_dissemination` (
  `deliverable_id` bigint(20) NOT NULL,
  `id_phase` bigint(20) DEFAULT NULL,
  `is_open_access` bit(1) DEFAULT NULL,
  `intellectual_property` bit(1) DEFAULT NULL,
  `limited_exclusivity` bit(1) DEFAULT NULL,
  `restricted_use_agreement` bit(1) DEFAULT NULL,
  `restricted_access_until` date DEFAULT NULL,
  `effective_date_restriction` bit(1) DEFAULT NULL,
  `restricted_embargoed` date DEFAULT NULL,
  `not_disseminated` bit(1) DEFAULT NULL,
  `already_disseminated` bit(1) DEFAULT NULL,
  `dissemination_channel` varchar(50) DEFAULT NULL,
  `dissemination_URL` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dissemination_channel_name` varchar(50) DEFAULT NULL,
  `synced` tinyint(1) DEFAULT NULL,
  `confidential` tinyint(1) DEFAULT NULL,
  `confidential_url` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `article_url` varchar(600) DEFAULT NULL,
  `has_doi` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
