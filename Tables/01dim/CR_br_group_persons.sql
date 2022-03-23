drop table if exists br_group_persons;


CREATE TABLE marlobi.br_group_persons
(
  fk_id_intersect_group_inst BIGINT
, fk_id_person BIGINT
, role_name VARCHAR(15),
CONSTRAINT `br_group_persons_ibfk_01` FOREIGN KEY (`fk_id_intersect_group_inst`) REFERENCES `dim_intersect_group_persons` (`pk_id_intersect_group_persons`) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT `br_group_persons_ibfk_02` FOREIGN KEY (`fk_id_person`) REFERENCES `dim_persons` (`pk_id_person`) ON DELETE RESTRICT ON UPDATE RESTRICT
)
;




