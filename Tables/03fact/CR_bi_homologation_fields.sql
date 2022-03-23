-- select * from bi_homologation_fields;
-- MARLODB
drop table if EXISTS bi_homologation_fields;
CREATE TABLE bi_homologation_fields (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Table` varchar(500) DEFAULT NULL,
  `Field` varchar(500) DEFAULT NULL,
   scope varchar(500),
  `Table_value` varchar(500) DEFAULT NULL,
  `New_value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('2', 'section_statuses', 'section_name', 'Synthesis', 'flagshipProgress', '1.2 Progress by CRP Flagships');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('3', 'section_statuses', 'section_name', 'Synthesis', 'crpProgress', '1.1 Progress towards SDGs & SLO');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('4', 'section_statuses', 'section_name', 'Synthesis', 'narrative', 'Executive Summary');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('5', 'section_statuses', 'section_name', 'Synthesis', 'outomesMilestones', 'Table 5: Outcomes & Milestones');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('6', 'section_statuses', 'section_name', 'Synthesis', 'ccDimensions', '1.3 Cross-Cutting Dimensions');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('7', 'section_statuses', 'section_name', 'Synthesis', 'intellectualAssets', '2.3 Intellectual Assets');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('8', 'section_statuses', 'section_name', 'Synthesis', 'fundingUse', '2.7 Use of W1-2 Funding');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('9', 'section_statuses', 'section_name', 'Synthesis', 'governance', '2.1 Management and governance');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('10', 'section_statuses', 'section_name', 'Synthesis', 'externalPartnerships', '2.2 Partnerships');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('11', 'section_statuses', 'section_name', 'Synthesis', 'melia', '2.4 MELIA');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('12', 'section_statuses', 'section_name', 'Synthesis', 'financial', '3.1 Financial Summary');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('14', 'section_statuses', 'section_name', 'Synthesis', 'oicr', 'Table 3: Outcome/Impact Case Reports');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('15', 'section_statuses', 'section_name', 'Synthesis', 'innovations', 'Table 4: Innovations');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('16', 'section_statuses', 'section_name', 'Synthesis', 'publications', 'Table 6: Publications');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('17', 'section_statuses', 'section_name', 'Synthesis', 'efficiency', '2.5 Efficiency');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('18', 'section_statuses', 'section_name', 'Synthesis', 'risks', '2.6 Management of Risks');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('19', 'section_statuses', 'section_name', 'Project', 'description', 'Description');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('20', 'section_statuses', 'section_name', 'Project', 'impacts', 'Impacts');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('21', 'section_statuses', 'section_name', 'Project', 'partners', 'Partners');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('22', 'section_statuses', 'section_name', 'Project', 'budgetByPartners', 'Budget by partners');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('23', 'section_statuses', 'section_name', 'Project', 'locations', 'Locations');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('24', 'section_statuses', 'section_name', 'Project', 'contributionsCrpList', 'Contribution to Flagship Outcomes');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('25', 'section_statuses', 'section_name', 'Project', 'deliverableList', 'Deliverables');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('26', 'section_statuses', 'section_name', 'Project', 'activities', 'Activities');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('27', 'section_statuses', 'section_name', 'Project', 'leverages', 'Leverages');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('28', 'section_statuses', 'section_name', 'Project', 'innovationsList', 'Innovations');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('29', 'section_statuses', 'section_name', 'Project', 'highlights', 'Project highlights');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('30', 'section_statuses', 'section_name', 'Project', 'contributionsLP6', 'Contribution to LP6');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('31', 'section_statuses', 'section_name', 'Project', 'policies', 'Policies');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('32', 'section_statuses', 'section_name', 'Project', 'studies', 'Evidences');
INSERT INTO `marloDB`.`bi_homologation_fields` (`id`, `Table`, `Field`, `scope`, `Table_value`, `New_value`) VALUES ('13', 'section_statuses', 'section_name', 'Synthesis', 'policies', 'Table 3: Policies');
