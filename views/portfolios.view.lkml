view: portfolios {
  sql_table_name: "CLIP_TOP_ACCOUNTS"."PORTFOLIOS"
    ;;
  drill_fields: [portfolio_id]

  dimension: portfolio_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."PORTFOLIO_ID" ;;
  }

  dimension: is_current_portfolio {
    type: number
    sql: ${TABLE}."IS_CURRENT_PORTFOLIO" ;;
  }

  dimension_group: portfolio_created_at_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."PORTFOLIO_CREATED_AT_TIMESTAMP" ;;
  }

  dimension: portfolio_name {
    type: string
    sql: ${TABLE}."PORTFOLIO_NAME" ;;
  }

  dimension: portfolio_quarter {
    type: number
    sql: ${TABLE}."PORTFOLIO_QUARTER" ;;
  }

  dimension: portfolio_year {
    type: number
    sql: ${TABLE}."PORTFOLIO_YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: [portfolio_id, portfolio_name, top_accounts.count]
  }
}
