connection: "payclip_refinery"

include: "/views/*.view.lkml"


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
}

explore: portfolios {
  label: "topaccounts_portafolio_id"
}

explore: payment {
  label: "payment"
}

explore: users {
  label: "users"
}
