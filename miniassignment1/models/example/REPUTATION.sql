{{ config(materialized='table') }}


select u.Id, u.DisplayName, u.Reputation
from "MINIDB"."MINISCHEMA"."USERS" u
ORDER BY u.Reputation
LIMIT 10
