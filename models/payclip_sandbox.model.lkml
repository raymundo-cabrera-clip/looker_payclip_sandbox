connection: "payclip_refinery"
include: "/views/*.view.lkml"

datagroup: payclip_sandbox_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: payclip_sandbox_default_datagroup


explore: commissionist {
  view_label: "COMMISSIONIST DATA"


  join: invoicing_information {
    sql_on: ${commissionist.invoicing_information_id} = ${invoicing_information.invoicing_information_id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: hunters {
    sql_on: ${hunters.hunter_id} = ${commissionist.hunter_id} ;;
    relationship: many_to_one
    type: left_outer
  }


  join: address_commissionist {
    sql_on: ${address_commissionist.commissionist_id} = ${commissionist.commissionist_id} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: addresses {
    sql_on: ${addresses.address_id} = ${address_commissionist.address_id} ;;
    relationship: many_to_one
    type: left_outer
  }
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

  join: order_batch {
    sql_on: ${order_batch.order_batch_id} = ${orders.order_batch_id} ;;
    relationship: many_to_one
    type: inner
  }
}

explore: payment {
  view_label: "payment"

  join: merchants {
    sql_on: ${merchants.id} = ${payment.merchant_id} ;;
    relationship: many_to_one
    type: inner
  }

  join: industries {
    sql_on: ${industries.id} = ${merchants.industry_id} ;;
    relationship: many_to_one
    type: inner
  }

  join: ksn_activated {
    sql_on: ${ksn_activated.merchant_id} = ${payment.merchant_id} ;;
    relationship: many_to_one
    type: inner
  }

  join: transaction_profile {
    sql_on: ${payment.transaction_id} = ${transaction_profile.transaction_id} ;;
    relationship: one_to_many
    type: inner
  }

  join: bins {
    sql_on: ${bins.bin_id} = ${transaction_profile.bin_id} ;;
    relationship: one_to_one
    type:  inner
  }

}

explore: sales_coupon {
  view_label: "sales_coupon"

  join: commissionist {
    sql_on: ${commissionist.commissionist_id} = ${sales_coupon.code} ;;
    relationship: many_to_one
    type: inner
  }
}

explore: user_sales_coupon {
  view_label: "user_sales_coupon"

  join: sales_coupon {
    sql_on: ${sales_coupon.sales_coupon_id} = ${user_sales_coupon.sales_coupon_id} ;;
    relationship: many_to_one
    type: inner
  }

  join: orders {
    sql_on: ${orders.order_batch_id} = ${user_sales_coupon.order_id} ;;
    relationship: many_to_one
    type: inner
  }
}

explore: merchants {
  view_label: "merchants"



}

explore: industries {
  view_label: "industries"

}

explore: ksn_activated {
  view_label: "ksn_activated"
}


explore: top_accounts {
  label: "top_accounts_portafolio"

  join: portfolios {
    sql_on: ${top_accounts.portfolio_id} = ${portfolios.portfolio_id} ;;
    relationship: many_to_one
    type: inner
  }

  join: payment {
    sql_on: ${payment.merchant_id} =  ${top_accounts.merchant_id};;
    relationship: one_to_many
    type: inner
  }

  join: users {
    sql_on: ${users.id} = ${payment.user_id} ;;
    relationship: one_to_many
    type: inner
  }

  join: transaction_profile {
    sql_on: ${payment.transaction_id} = ${transaction_profile.transaction_id} ;;
    relationship: one_to_many
    type: inner
  }

  join: bins {
    sql_on: ${bins.bin_id} = ${transaction_profile.bin_id} ;;
    relationship: one_to_one
    type:  inner
  }

}

explore: portfolios {
  label: "topaccounts_portafolio_id"
}


explore: users {
  label: "users"
}

explore: bins {
  label: "bins"
}

explore: transaction_profile {
  label: "transaction_profile"

  join: bins {
    sql_on: ${bins.bin_id} = ${transaction_profile.bin_id} ;;
    relationship: one_to_one
    type:  inner
  }

}
