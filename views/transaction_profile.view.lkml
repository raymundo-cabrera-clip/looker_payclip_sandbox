view: transaction_profile {
  sql_table_name: "CLIPDW_TRANSACTION"."TRANSACTION_PROFILE"
    ;;

  dimension: bin_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."BIN_ID" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: dms_filename {
    type: string
    sql: ${TABLE}."DMS_FILENAME" ;;
  }

  dimension: dms_filenumber {
    type: number
    sql: ${TABLE}."DMS_FILENUMBER" ;;
  }

  dimension: dms_increasing_id {
    type: number
    sql: ${TABLE}."DMS_INCREASING_ID" ;;
  }

  dimension_group: dms_loaded {
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
    sql: ${TABLE}."DMS_LOADED_AT" ;;
  }

  dimension: dms_operation {
    type: string
    sql: ${TABLE}."DMS_OPERATION" ;;
  }

  dimension: dms_rank_filenumber {
    type: number
    sql: ${TABLE}."DMS_RANK_FILENUMBER" ;;
  }

  dimension: dms_rank_fileorder {
    type: number
    sql: ${TABLE}."DMS_RANK_FILEORDER" ;;
  }

  dimension: name_on_instrument {
    type: string
    sql: ${TABLE}."NAME_ON_INSTRUMENT" ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}."NAMESPACE" ;;
  }

  dimension: pan_profile_id {
    type: string
    sql: ${TABLE}."PAN_PROFILE_ID" ;;
  }

  dimension: reference_token_id {
    type: string
    sql: ${TABLE}."REFERENCE_TOKEN_ID" ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}."TRANSACTION_ID" ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}."TRANSACTION_TYPE" ;;
  }

  dimension: wallet_user_email {
    type: string
    sql: ${TABLE}."WALLET_USER_EMAIL" ;;
  }

  dimension: wallet_user_id {
    type: string
    sql: ${TABLE}."WALLET_USER_ID" ;;
  }

  dimension: test_test {
    type: string
    sql: ${bins."CARD_TYPE"} ;;
  }

  measure: count {
    type: count
    drill_fields: [dms_filename, bins.bin_id, bins.dms_filename]
  }
}
