/*
This is a public view on Oracle database.
Shows the depencies between objects within a schema
*/
set define off;
select 
 DEPENDENCY_TYPE
,OWNER
,REFERENCED_TYPE
,REFERENCED_LINK_NAME
,REFERENCED_OWNER
,REFERENCED_NAME
,NAME
,TYPE
from all_dependencies
where owner = :owner