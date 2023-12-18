{{

config(
    materialized='table'
)

}}


select ev.event_name, ao.platform, ao.user_skey from `datatestproj-404419.userbase.app_opens` ao
full join `datatestproj-404419.userbase.events` ev
on ao.session_skey = ev.session_skey
where ev.event_name is not null