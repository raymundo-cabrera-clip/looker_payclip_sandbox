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

explore: address_commissionist {
  view_label: "address_commisionist"
}

explore: addresses {
  view_label: "addresses"
}

explore: devices {
  view_label: "devices"
}

explore: hunters {
  view_label: "hunters"
}

explore: invoicing_information {
  view_label: "invoicing_information"
}

explore: limitrequests_new {
  view_label: "limitrequests_new"
}

explore: order_batch {
  view_label: "order_batch"
}

explore: orders {
  view_label: "orders"
}

explore: payment {
  view_label: "payment"
}

explore: sales_coupon {
  view_label: "sales_coupon"
}

explore: user_sales_coupon {
  view_label: "user_sales_coupon"
}
