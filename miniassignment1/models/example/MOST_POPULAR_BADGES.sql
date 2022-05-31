{{ config(materialized='table') }}

select *
from "MINIDB"."MINISCHEMA"."BADGES" b
ORDER BY b.UserId
LIMIT 10
