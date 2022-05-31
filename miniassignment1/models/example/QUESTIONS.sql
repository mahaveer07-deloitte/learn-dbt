{{ config(materialized='table') }}

select p.body
from "MINIDB"."MINISCHEMA"."POSTS" p
where p.Id = (select u.Id
from "MINIDB"."MINISCHEMA"."USERS" u
where u.DisplayName="alexandrul") and p.PostTypeId = 1
