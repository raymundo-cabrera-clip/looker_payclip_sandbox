view: payment {
  sql_table_name: "CLIPDW_TRANSACTION"."PAYMENT"
    ;;
  drill_fields: [reference_payment_id]

  dimension: reference_payment_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."REFERENCE_PAYMENT_ID" ;;
  }

  dimension: affiliation {
    type: string
    sql: ${TABLE}."AFFILIATION" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}."API_KEY" ;;
  }

  dimension: api_user_id {
    type: string
    sql: ${TABLE}."API_USER_ID" ;;
  }

  dimension: base_amount {
    type: number
    sql: ${TABLE}."BASE_AMOUNT" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: capability {
    type: string
    sql: ${TABLE}."CAPABILITY" ;;
  }

  dimension: card_country_code {
    type: string
    sql: ${TABLE}."CARD_COUNTRY_CODE" ;;
  }

  dimension: card_id {
    type: string
    sql: ${TABLE}."CARD_ID" ;;
  }

  dimension: cavv_response_code {
    type: string
    sql: ${TABLE}."CAVV_RESPONSE_CODE" ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }

  dimension: cvv2_response_code {
    type: string
    sql: ${TABLE}."CVV2_RESPONSE_CODE" ;;
  }

  dimension: decline_code {
    type: number
    sql: ${TABLE}."DECLINE_CODE" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."DELETED_AT" ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}."DEVICE_ID" ;;
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

  dimension: exp_date {
    type: string
    sql: ${TABLE}."EXP_DATE" ;;
  }

  dimension_group: finish {
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
    sql: ${TABLE}."FINISH_DATE" ;;
  }

  dimension: fx_discount_rate {
    type: number
    sql: ${TABLE}."FX_DISCOUNT_RATE" ;;
  }

  dimension: fx_rate {
    type: number
    sql: ${TABLE}."FX_RATE" ;;
  }

  dimension: hw_has_pinpad {
    type: number
    sql: ${TABLE}."HW_HAS_PINPAD" ;;
  }

  dimension: hw_manufacturer {
    type: string
    sql: ${TABLE}."HW_MANUFACTURER" ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: is_inquiried {
    type: string
    sql: ${TABLE}."IS_INQUIRIED" ;;
  }

  dimension: issuer {
    type: string
    sql: ${TABLE}."ISSUER" ;;
  }

  dimension: item_info {
    type: string
    sql: ${TABLE}."ITEM_INFO" ;;
  }

  dimension: ksn {
    type: string
    sql: ${TABLE}."KSN" ;;
  }

  dimension: last4 {
    type: string
    sql: ${TABLE}."LAST4" ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."MERCHANT_ID" ;;
  }

  dimension: merchant_invoice_id {
    type: string
    sql: ${TABLE}."MERCHANT_INVOICE_ID" ;;
  }

  dimension: merchant_token {
    type: string
    sql: ${TABLE}."MERCHANT_TOKEN" ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension_group: payment {
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
    sql: ${TABLE}."PAYMENT_DATE" ;;
  }

  dimension: payment_sub_type {
    type: string
    sql: ${TABLE}."PAYMENT_SUB_TYPE" ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}."PAYMENT_TYPE" ;;
  }

  dimension: processor {
    type: string
    sql: ${TABLE}."PROCESSOR" ;;
  }

  dimension: psp {
    type: string
    sql: ${TABLE}."PSP" ;;
  }

  dimension: psp_amount {
    type: number
    sql: ${TABLE}."PSP_AMOUNT" ;;
  }

  dimension: psp_currency {
    type: string
    sql: ${TABLE}."PSP_CURRENCY" ;;
  }

  dimension: radius_check {
    type: string
    sql: ${TABLE}."RADIUS_CHECK" ;;
  }

  dimension: reader_type_code {
    type: string
    sql: ${TABLE}."READER_TYPE_CODE" ;;
  }

  dimension: reader_type_code_name {
    type: string
    sql: ${TABLE}."READER_TYPE_CODE_NAME" ;;
  }

  dimension: receipt_no {
    type: string
    sql: ${TABLE}."RECEIPT_NO" ;;
  }

  dimension: refund_status_msg {
    type: string
    sql: ${TABLE}."REFUND_STATUS_MSG" ;;
  }

  dimension: reversal_initiator {
    type: string
    sql: ${TABLE}."REVERSAL_INITIATOR" ;;
  }

  dimension: sop_days {
    type: number
    sql: ${TABLE}."SOP_DAYS" ;;
  }

  dimension_group: sop_local {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."SOP_LOCAL_DATE" ;;
  }

  dimension: status_code {
    type: number
    sql: ${TABLE}."STATUS_CODE" ;;
  }

  dimension: status_msg {
    type: string
    sql: ${TABLE}."STATUS_MSG" ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}."STORE_ID" ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}."TERM" ;;
  }

  dimension: tip {
    type: number
    sql: ${TABLE}."TIP" ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}."TRANSACTION_ID" ;;
  }

  dimension: trx_id {
    type: string
    sql: ${TABLE}."TRX_ID" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
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

  dimension: user_email {
    type: string
    sql: ${TABLE}."USER_EMAIL" ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}."UUID" ;;
  }

  measure: count {
    type: count
    label: "txn"
    drill_fields: [reference_payment_id, dms_filename, reader_type_code_name]
  }

  measure: sum {
    type: number
    label: "tpv"
    sql: round(sum(${amount}) ,2) ;;
  }

  measure: location {
    type: string
    sql:  ${TABLE}."LATITUDE" ||','||  ${TABLE}."LONGITUDE"  ;;
  }

  measure: month_name {
    type: string
    label: "month_name"
    sql: to_char(date_trunc(month, convert_timesone('UTC','America/Mexico_City', ${TABLE}."CREATED_AT")), 'Month')  ;;
  }

}
