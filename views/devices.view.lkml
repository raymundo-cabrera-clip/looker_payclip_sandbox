view: devices {
  sql_table_name: "CLIPDW_COMMISSIONIST"."DEVICES"
    ;;

  dimension: associate_email {
    type: string
    sql: ${TABLE}."ASSOCIATE_EMAIL" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."CHANNEL" ;;
  }

  dimension: commission_amount {
    type: number
    sql: ${TABLE}."COMMISSION_AMOUNT" ;;
  }

  dimension: commissionist_id {
    type: string
    sql: ${TABLE}."COMMISSIONIST_ID" ;;
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

  dimension: erp_id {
    type: string
    sql: ${TABLE}."ERP_ID" ;;
  }

  dimension_group: first_transaction {
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
    sql: ${TABLE}."FIRST_TRANSACTION_DATE" ;;
  }

  dimension: ksn {
    type: string
    sql: ${TABLE}."KSN" ;;
  }

  dimension_group: ksn_activation {
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
    sql: ${TABLE}."KSN_ACTIVATION_DATE" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: merchant_business_name {
    type: string
    sql: ${TABLE}."MERCHANT_BUSINESS_NAME" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."MERCHANT_ID" ;;
  }

  dimension: merchant_registration_phone {
    type: string
    sql: ${TABLE}."MERCHANT_REGISTRATION_PHONE" ;;
  }

  dimension: order_batch_id {
    type: string
    sql: ${TABLE}."ORDER_BATCH_ID" ;;
  }

  dimension_group: order_created {
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
    sql: ${TABLE}."ORDER_CREATED_AT" ;;
  }

  dimension: order_event {
    type: string
    sql: ${TABLE}."ORDER_EVENT" ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}."ORDER_TYPE" ;;
  }

  dimension_group: picking {
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
    sql: ${TABLE}."PICKING_DATE" ;;
  }

  dimension: picking_person {
    type: string
    sql: ${TABLE}."PICKING_PERSON" ;;
  }

  dimension: reader_type {
    type: string
    sql: ${TABLE}."READER_TYPE" ;;
  }

  dimension_group: registered {
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
    sql: ${TABLE}."REGISTERED_AT" ;;
  }

  dimension: registration_fee {
    type: number
    sql: ${TABLE}."REGISTRATION_FEE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: sub_channel {
    type: string
    sql: ${TABLE}."SUB_CHANNEL" ;;
  }

  dimension_group: tpv_act {
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
    sql: ${TABLE}."TPV_ACT_DATE" ;;
  }

  dimension_group: tpv_act_no_reg {
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
    sql: ${TABLE}."TPV_ACT_NO_REG_DATE" ;;
  }

  dimension: tpv_fee {
    type: number
    sql: ${TABLE}."TPV_FEE" ;;
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
    drill_fields: [dms_filename, merchant_business_name]
  }
}
