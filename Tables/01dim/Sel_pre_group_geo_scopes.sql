-- oicrs
select pesi.id_phase, pesi.project_expected_study_id ent_id, 'oicrs' ent_type,
group_concat(gs.name 
	 	 		order by gs.name asc separator ', ') geo_scope_name_group, 
group_concat(g.rep_ind_geographic_scope_id
				order by gs.name asc separator ', ') ids_group
--                ,
-- g.rep_ind_geographic_scope_id scope_id 
from project_expected_studies  pes
join project_expected_study_info pesi on pesi.project_expected_study_id = pes.id
join project_expected_study_geographic_scopes g on g.expected_id = pesi.project_expected_study_id and g.id_phase = pesi.id_phase
join phases ph on ph.id = pesi.id_phase
join rep_ind_geographic_scopes gs on gs.id =  g.rep_ind_geographic_scope_id
where pesi.`year` = ph. YEAR
AND ph. YEAR between 2018 and 2019
-- AND ph.year between ${START_YEAR} and ${END_YEAR} 
AND ph. NAME = 'AR'
and pes.is_active
and pesi.study_type_id = 1
and pesi.title is not null
group by pesi.id_phase, pesi.project_expected_study_id 
union all
-- funding sources
select cc.id_phase, cc.ent_id, ent_type, 
group_concat(cc.geo_scope_name 
	 	 		 order by cc.geo_scope_name separator ', ') geo_scope_name_group, 
group_concat(cc.geo_scope_id
				order by cc.geo_scope_name asc separator ', ') ids_group

from
(select fsi.id_phase, fsi.funding_source_id ent_id, 'fs' ent_type,
1 geo_scope_id, 'Global' geo_scope_name
from funding_sources fs
join funding_sources_info fsi on fs.id = fsi.funding_source_id
join phases ph on ph.id = fsi.id_phase
where fs.is_active 
and fsi.is_active
and fsi.global = 1
and ph.name = 'AR'
and ph.year = 2021
union all
select distinct fsi.id_phase, fsi.funding_source_id ent_id, 'fs' ent_type ,
 if(le.element_type_id = 1,2,4) geo_scope_id, if(le.element_type_id = 1,'Regional','National') geo_scope_name
from funding_sources fs
join funding_sources_info fsi on fs.id = fsi.funding_source_id
join phases ph on ph.id = fsi.id_phase
join funding_source_locations fsl on fsi.id_phase = fsl.id_phase and fsi.funding_source_id = fsl.funding_source_id
join loc_elements le on le.id = fsl.loc_element_id
where fs.is_active 
and fsi.is_active
and fsl.is_active
and le.element_type_id in (1,2) -- region
and ph.name = 'AR'
and ph.year = 2021
) cc
group by cc.id_phase, cc.ent_id, ent_type
;
