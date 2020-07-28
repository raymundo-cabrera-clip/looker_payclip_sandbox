connection: "payclip_refinery"
include: "/views/*.view.lkml"

datagroup: payclip_sandbox_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: payclip_sandbox_default_datagroup


explore: commissionist {
  view_label: "COMMISSIONIST DATA"
}
