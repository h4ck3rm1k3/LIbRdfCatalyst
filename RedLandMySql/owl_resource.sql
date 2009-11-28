drop view OWL_RESOURCE;
create view OWL_RESOURCE
as
SELECT 
me.ID,
me.uri,
subj_type.uri as subject_uri,
pred.uri as predicate_uri,
obj_type.uri as object_uri,
subj_type.id as subject_id, 
pred.id as predicate_id,  
obj_type.id as object_id
FROM 
Resources me, 
Statements17546201007601059027 S ,
Statements17546201007601059027 Sobj , /*the objects type*/
Statements17546201007601059027 Ssubj , /*the objects type*/
Resources pred,
Resources obj,
Resources obj_type,
Resources subj_type
WHERE /*( me.ID = '55927761647701690') and*/
 S.subject=me.ID
and pred.id=S.predicate
and obj.id=S.object

######
and Sobj.subject= S.object
and obj_type.id=Sobj.object
and Sobj.predicate = 2982895206037061277 /*rdf:type*/


and Ssubj.subject= S.subject
and subj_type.id=Ssubj.object
and Ssubj.predicate = 2982895206037061277 /*rdf:type*/
group by 
me.id,
subject_id, 
predicate_id,  
object_id

