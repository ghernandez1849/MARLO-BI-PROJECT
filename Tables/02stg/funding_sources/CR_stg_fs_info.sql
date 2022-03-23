drop table if exists stg_fs_info;

create table stg_fs_info
(
  `id` bigint(20) NOT NULL,
  `title` text,
  `description` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `finance_code` text,
  `contact_person_name` text,
  `contact_person_email` text,
  `donor` bigint(20) DEFAULT NULL,
  `direct_donor` bigint(20) DEFAULT NULL,  
  `status` int(11) DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL,
  `division_id` bigint(20) DEFAULT NULL,
  `global` tinyint(1) ,
  `w1w2` tinyint(1) ,
  `lead_center_id` bigint(20) DEFAULT NULL,
  `id_phase` bigint(20) NOT NULL,
  `funding_source_id` bigint(20) NOT NULL,
  `extended_date` date DEFAULT NULL,
  `fs_idname` text,
  `grant_amount` double(20,5),
  `is_active` tinyint(1) NOT NULL,
  `current_end_date` date,
  `year` int(4),
  `global_unit_id` bigint(20),
  `budget_amount` double(20,5),
  `budget_amount_allocated` double(20,5),
  `pending_budget_amount` double(20,5),
  `has_budget_allocated` tinyint(1) ,
  `has_budget` tinyint(1),
  `fs_link` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

