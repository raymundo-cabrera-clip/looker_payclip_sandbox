view: bins {
  sql_table_name: "CLIPDW_TRANSACTION"."BINS"
    ;;
  drill_fields: [bin_id]

  dimension: bin_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."BIN_ID" ;;
  }

  dimension: branch {
    type: string
    sql: ${TABLE}."BRANCH" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: brand_code {
    type: string
    sql: ${TABLE}."BRAND_CODE" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}."COUNTRY_CODE" ;;
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

  dimension: has_atm {
    type: number
    sql: ${TABLE}."HAS_ATM" ;;
  }

  dimension: has_auto_charges {
    type: number
    sql: ${TABLE}."HAS_AUTO_CHARGES" ;;
  }

  dimension: has_cash_back {
    type: number
    sql: ${TABLE}."HAS_CASH_BACK" ;;
  }

  dimension: has_chip_card {
    type: number
    sql: ${TABLE}."HAS_CHIP_CARD" ;;
  }

  dimension: has_ecomm {
    type: number
    sql: ${TABLE}."HAS_ECOMM" ;;
  }

  dimension: has_installments {
    type: number
    sql: ${TABLE}."HAS_INSTALLMENTS" ;;
  }

  dimension: has_interbank {
    type: number
    sql: ${TABLE}."HAS_INTERBANK" ;;
  }

  dimension: has_manual_capture {
    type: number
    sql: ${TABLE}."HAS_MANUAL_CAPTURE" ;;
  }

  dimension: has_phone_sales {
    type: number
    sql: ${TABLE}."HAS_PHONE_SALES" ;;
  }

  dimension: has_pos {
    type: number
    sql: ${TABLE}."HAS_POS" ;;
  }

  dimension: has_recurring_billing {
    type: number
    sql: ${TABLE}."HAS_RECURRING_BILLING" ;;
  }

  dimension: has_spei {
    type: number
    sql: ${TABLE}."HAS_SPEI" ;;
  }

  dimension: issuer {
    type: string
    sql: ${TABLE}."ISSUER" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."PRODUCT" ;;
  }

  dimension: sub_type {
    type: string
    sql: ${TABLE}."SUB_TYPE" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }

  measure: count {
    type: count
    drill_fields: [bin_id, dms_filename, transaction_profile.count]
  }
}
