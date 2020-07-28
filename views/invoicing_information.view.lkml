view: invoicing_information {
  sql_table_name: "CLIPDW_COMMISSIONIST"."INVOICING_INFORMATION"
    ;;
  drill_fields: [invoicing_information_id]

  dimension: invoicing_information_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."INVOICING_INFORMATION_ID" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: bank {
    type: string
    sql: ${TABLE}."BANK" ;;
  }

  dimension: clabe {
    type: string
    sql: ${TABLE}."CLABE" ;;
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

  dimension: erp_account_id {
    type: number
    sql: ${TABLE}."ERP_ACCOUNT_ID" ;;
  }

  dimension: erp_account_name {
    type: string
    sql: ${TABLE}."ERP_ACCOUNT_NAME" ;;
  }

  dimension: erp_cfdi_use_id {
    type: string
    sql: ${TABLE}."ERP_CFDI_USE_ID" ;;
  }

  dimension: erp_currency_id {
    type: string
    sql: ${TABLE}."ERP_CURRENCY_ID" ;;
  }

  dimension: erp_payment_form_id {
    type: string
    sql: ${TABLE}."ERP_PAYMENT_FORM_ID" ;;
  }

  dimension: erp_payment_method_id {
    type: string
    sql: ${TABLE}."ERP_PAYMENT_METHOD_ID" ;;
  }

  dimension: erp_reader_delivery_condition_id {
    type: string
    sql: ${TABLE}."ERP_READER_DELIVERY_CONDITION_ID" ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}."RFC" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."UPDATED_AT" ;;
  }

  measure: count {
    type: count
    drill_fields: [invoicing_information_id, dms_filename, erp_account_name]
  }
}
