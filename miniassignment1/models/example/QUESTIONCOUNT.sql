{{ config(materialized='table') }}

select u.Id, u.DisplayName, u.Reputation ,count(select p.PostTypeId
from "MINIDB"."MINISCHEMA"."POSTS" p
where p.PostTypeId=1)
from "MINIDB"."MINISCHEMA"."USERS" u
where Reputation>75000
