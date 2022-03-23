drop table if EXISTS bi_stg_deliverables_full_data;
CREATE TABLE `bi_stg_deliverables_full_data` (
  `id_phase` bigint NOT NULL,
  `CGIAR_entity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Phase` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PRY_ID` varchar(20) NOT NULL DEFAULT '',
  `PRY_composeID` varchar(21) DEFAULT NULL,
  `PRY_title` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DLV_ID` bigint DEFAULT NULL,
  `DLV_composeID` varchar(21) DEFAULT NULL,
  `DLV_Title` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `DLV_Description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `DLV_year` int NOT NULL DEFAULT '0',
  `DLV_Category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DLV_subCategory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `DLV_Status` varchar(13) NOT NULL DEFAULT '',
  `DLV_keyOutput` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `DLV_geographicScope` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DLV_location` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DLV_CrossCuttingDimension` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DLV_CrossCuttingScore` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DLV_partnerName` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DLV_partnerPerson` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DLV_isOpenAcces` varchar(3) NOT NULL DEFAULT '',
  -- `DLV_disseminatedTitle` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  -- `DLV_disseminatedDate` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `DLV_licence` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `DLV_Journal` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `FS_ID` bigint DEFAULT NULL,
  `FS_composeID` varchar(22) DEFAULT NULL,
  `FS_title` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `FS_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Management_liason` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reg_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prg_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CoA_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `CoA_DESC` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loc_region` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `already_disseminated` varchar(3) NOT NULL DEFAULT '',
  `dissemination_channel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dissemination_URL` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  -- `DOI` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  -- `Handle` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `journal` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `isi_publication` varchar(3) NOT NULL DEFAULT '',
  `identifier` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DLV_planned` varchar(7) NOT NULL DEFAULT '',
  `is_complete` varchar(19) NOT NULL DEFAULT '',
  -- `Included_AR` varchar(10) DEFAULT NULL,
  `Link` varchar(172) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `adopted_license` varchar(3) NOT NULL DEFAULT '',
   `DLV_loc_iso_alpha_2` varchar(45),
   KEY `idx_stg_deliverables_full_data_01` (`id_phase`, `DLV_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
