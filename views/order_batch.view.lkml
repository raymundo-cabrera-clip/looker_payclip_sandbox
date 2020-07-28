view: order_batch {
  sql_table_name: "CLIPDW_LOGISTICS"."ORDER_BATCH"
    ;;
  drill_fields: [order_batch_id]

  dimension: order_batch_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ORDER_BATCH_ID" ;;
  }

  dimension: charge {
    type: number
    sql: ${TABLE}."CHARGE" ;;
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

  dimension: created_by {
    type: string
    sql: ${TABLE}."CREATED_BY" ;;
  }

  dimension: customer_first_name {
    type: string
    sql: ${TABLE}."CUSTOMER_FIRST_NAME" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: customer_last_name {
    type: string
    sql: ${TABLE}."CUSTOMER_LAST_NAME" ;;
  }

  dimension: customer_phone {
    type: string
    sql: ${TABLE}."CUSTOMER_PHONE" ;;
  }

  dimension: customer_second_last_name {
    type: string
    sql: ${TABLE}."CUSTOMER_SECOND_LAST_NAME" ;;
  }

  dimension_group: delivered {
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
    sql: ${TABLE}."DELIVERED_AT" ;;
  }

  dimension: delivery_company {
    type: string
    sql: ${TABLE}."DELIVERY_COMPANY" ;;
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

  dimension: erp_id {
    type: number
    sql: ${TABLE}."ERP_ID" ;;
  }

  dimension: ext_store_ref_num {
    type: string
    sql: ${TABLE}."EXT_STORE_REF_NUM" ;;
  }

  dimension: farmer_email {
    type: string
    sql: ${TABLE}."FARMER_EMAIL" ;;
  }

  dimension_group: label_created {
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
    sql: ${TABLE}."LABEL_CREATED_AT" ;;
  }

  dimension_group: last_check {
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
    sql: ${TABLE}."LAST_CHECK_AT" ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}."LOCATION_ID" ;;
  }

  dimension: lsp {
    type: string
    sql: ${TABLE}."LSP" ;;
  }

  dimension: lsp_id {
    type: string
    sql: ${TABLE}."LSP_ID" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."MERCHANT_ID" ;;
  }

  dimension: order_batch_number {
    type: number
    sql: ${TABLE}."ORDER_BATCH_NUMBER" ;;
  }

  dimension: order_request_id {
    type: string
    sql: ${TABLE}."ORDER_REQUEST_ID" ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}."ORDER_TYPE" ;;
  }

  dimension: payment_captured_by {
    type: string
    sql: ${TABLE}."PAYMENT_CAPTURED_BY" ;;
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

  dimension: payment_method {
    type: string
    sql: ${TABLE}."PAYMENT_METHOD" ;;
  }

  dimension: psp_payer_email {
    type: string
    sql: ${TABLE}."PSP_PAYER_EMAIL" ;;
  }

  dimension: psp_payer_name {
    type: string
    sql: ${TABLE}."PSP_PAYER_NAME" ;;
  }

  dimension: psp_txn_id {
    type: string
    sql: ${TABLE}."PSP_TXN_ID" ;;
  }

  dimension: psp_type {
    type: string
    sql: ${TABLE}."PSP_TYPE" ;;
  }

  dimension: ref_name {
    type: string
    sql: ${TABLE}."REF_NAME" ;;
  }

  dimension: rejected_code {
    type: string
    sql: ${TABLE}."REJECTED_CODE" ;;
  }

  dimension: request_type {
    type: string
    sql: ${TABLE}."REQUEST_TYPE" ;;
  }

  dimension: retail_order_number {
    type: string
    sql: ${TABLE}."RETAIL_ORDER_NUMBER" ;;
  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}."SALES_CHANNEL" ;;
  }

  dimension: sales_sub_channel {
    type: string
    sql: ${TABLE}."SALES_SUB_CHANNEL" ;;
  }

  dimension: shipping_address_event_id {
    type: string
    sql: ${TABLE}."SHIPPING_ADDRESS_EVENT_ID" ;;
  }

  dimension: shipping_status {
    type: string
    sql: ${TABLE}."SHIPPING_STATUS" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: subtype {
    type: string
    sql: ${TABLE}."SUBTYPE" ;;
  }

  dimension: term {
    type: number
    sql: ${TABLE}."TERM" ;;
  }

  dimension: total_calculated_amount {
    type: number
    sql: ${TABLE}."TOTAL_CALCULATED_AMOUNT" ;;
  }

  dimension: total_paid_amount {
    type: number
    sql: ${TABLE}."TOTAL_PAID_AMOUNT" ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}."TRACKING_NUMBER" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_batch_id,
      customer_last_name,
      psp_payer_name,
      customer_first_name,
      dms_filename,
      ref_name,
      customer_second_last_name
    ]
  }
}
