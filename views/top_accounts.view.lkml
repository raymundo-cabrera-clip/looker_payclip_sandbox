view: top_accounts {
  sql_table_name: "CLIP_TOP_ACCOUNTS"."TOP_ACCOUNTS"
    ;;
  drill_fields: [top_account_id]

  dimension: top_account_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."TOP_ACCOUNT_ID" ;;
  }

  dimension: classification {
    type: string
    sql: ${TABLE}."CLASSIFICATION" ;;
  }

  dimension: data_source_id {
    type: string
    sql: ${TABLE}."DATA_SOURCE_ID" ;;
  }

  dimension: is_b2_b {
    type: number
    sql: ${TABLE}."IS_B2B" ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: kae_email {
    type: string
    sql: ${TABLE}."KAE_EMAIL" ;;
  }

  dimension: kae_industry {
    type: string
    sql: ${TABLE}."KAE_INDUSTRY" ;;
  }

  dimension: kae_name {
    type: string
    sql: ${TABLE}."KAE_NAME" ;;
  }

  dimension: merchant_email {
    type: string
    sql: ${TABLE}."MERCHANT_EMAIL" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."MERCHANT_ID" ;;
  }

  dimension: merchant_name {
    type: string
    sql: ${TABLE}."MERCHANT_NAME" ;;
  }

  dimension: merchant_rank {
    type: number
    sql: ${TABLE}."MERCHANT_RANK" ;;
  }

  dimension: nodo_id {
    type: string
    sql: ${TABLE}."NODO_ID" ;;
  }

  dimension: nodo_name {
    type: string
    sql: ${TABLE}."NODO_NAME" ;;
  }

  dimension: portfolio_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."PORTFOLIO_ID" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}."QUARTER" ;;
  }

  dimension_group: top_account_created_at_timestamp {
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
    sql: ${TABLE}."TOP_ACCOUNT_CREATED_AT_TIMESTAMP" ;;
  }

  dimension: top_account_type {
    type: string
    sql: ${TABLE}."TOP_ACCOUNT_TYPE" ;;
  }

  dimension_group: top_account_updated_at_timestamp {
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
    sql: ${TABLE}."TOP_ACCOUNT_UPDATED_AT_TIMESTAMP" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      top_account_id,
      kae_name,
      nodo_name,
      merchant_name,
      portfolios.portfolio_name,
      portfolios.portfolio_id
    ]
  }
}
