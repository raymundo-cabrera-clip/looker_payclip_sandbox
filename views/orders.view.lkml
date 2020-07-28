view: orders {
  sql_table_name: "CLIPDW_LOGISTICS"."ORDERS"
    ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension: calculated_amount {
    type: number
    sql: ${TABLE}."CALCULATED_AMOUNT" ;;
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

  dimension: delivered_quantity {
    type: number
    sql: ${TABLE}."DELIVERED_QUANTITY" ;;
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

  dimension: erp_retailer_store_id {
    type: string
    sql: ${TABLE}."ERP_RETAILER_STORE_ID" ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}."FIRSTNAME" ;;
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

  dimension: lastname {
    type: string
    sql: ${TABLE}."LASTNAME" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."MERCHANT_ID" ;;
  }

  dimension: order_batch_id {
    type: string
    sql: ${TABLE}."ORDER_BATCH_ID" ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}."ORDER_NUMBER" ;;
  }

  dimension: order_request_id {
    type: string
    sql: ${TABLE}."ORDER_REQUEST_ID" ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}."ORDER_TYPE" ;;
  }

  dimension: paid_amount {
    type: number
    sql: ${TABLE}."PAID_AMOUNT" ;;
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

  dimension: paymentmethod {
    type: string
    sql: ${TABLE}."PAYMENTMETHOD" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
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

  dimension: quantity {
    type: number
    sql: ${TABLE}."QUANTITY" ;;
  }

  dimension: ref_name {
    type: string
    sql: ${TABLE}."REF_NAME" ;;
  }

  dimension: returned_quantity {
    type: number
    sql: ${TABLE}."RETURNED_QUANTITY" ;;
  }

  dimension: shipping_address_event_id {
    type: string
    sql: ${TABLE}."SHIPPING_ADDRESS_EVENT_ID" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}."TRACKING_NUMBER" ;;
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

  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_id,
      psp_payer_name,
      dms_filename,
      firstname,
      ref_name,
      product_name,
      lastname
    ]
  }
}
