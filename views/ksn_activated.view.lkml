view: ksn_activated {
  sql_table_name: "GROWTH"."KSN_ACTIVATED"
    ;;

  dimension_group: activation {
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
    sql: ${TABLE}."ACTIVATION" ;;
  }

  dimension: buyer {
    type: string
    sql: ${TABLE}."BUYER" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."CHANNEL" ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}."COMMISSION" ;;
  }

  dimension: dhl_guide {
    type: string
    sql: ${TABLE}."DHL_GUIDE" ;;
  }

  dimension: groups {
    type: string
    sql: ${TABLE}."groups" ;;
  }

  dimension: internal_id {
    type: string
    sql: ${TABLE}."INTERNAL_ID" ;;
  }

  dimension: is_new_merchant {
    type: yesno
    sql: ${TABLE}."IS_NEW_MERCHANT" ;;
  }

  dimension: ksn {
    type: string
    sql: ${TABLE}."KSN" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: logistics_order_id {
    type: string
    sql: ${TABLE}."LOGISTICS_ORDER_ID" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: marketing_campaign {
    type: string
    sql: ${TABLE}."MARKETING_CAMPAIGN" ;;
  }

  dimension: marketing_channel {
    type: string
    sql: ${TABLE}."MARKETING_CHANNEL" ;;
  }

  dimension: merchant_business_name {
    type: string
    sql: ${TABLE}."MERCHANT_BUSINESS_NAME" ;;
  }

  dimension: merchant_email {
    type: string
    sql: ${TABLE}."MERCHANT_EMAIL" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."MERCHANT_ID" ;;
  }

  dimension: merchant_registration_phone {
    type: string
    sql: ${TABLE}."MERCHANT_REGISTRATION_PHONE" ;;
  }

  dimension: order {
    type: string
    sql: ${TABLE}."order" ;;
  }

  dimension_group: order_created {
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
    sql: ${TABLE}."ORDER_CREATED" ;;
  }

  dimension: order_event {
    type: string
    sql: ${TABLE}."ORDER_EVENT" ;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}."ORDER_TYPE" ;;
  }

  dimension: reader_type {
    type: string
    sql: ${TABLE}."READER_TYPE" ;;
  }

  dimension_group: sell_out {
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
    sql: ${TABLE}."SELL_OUT_DATE" ;;
  }

  dimension_group: sell_out_first_txn {
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
    sql: ${TABLE}."SELL_OUT_FIRST_TXN" ;;
  }

  dimension: sell_out_first_txn_me {
    type: string
    sql: ${TABLE}."SELL_OUT_FIRST_TXN_ME" ;;
  }

  dimension: sellout_commission {
    type: number
    sql: ${TABLE}."SELLOUT_COMMISSION" ;;
  }

  dimension_group: sold {
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
    sql: ${TABLE}."SOLD_AT" ;;
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

  dimension_group: tpv_activation {
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
    sql: ${TABLE}."TPV_ACTIVATION" ;;
  }

  dimension: tpv_commission {
    type: number
    sql: ${TABLE}."TPV_COMMISSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [merchant_business_name]
  }
}
