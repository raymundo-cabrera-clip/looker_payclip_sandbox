view: limitrequests_new {
  sql_table_name: "CLIPDW_LIMITREQUESTS"."LIMITREQUESTS_NEW"
    ;;

  dimension: amount {
    type: string
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

  dimension: application_build_number {
    type: number
    sql: ${TABLE}."APPLICATION_BUILD_NUMBER" ;;
  }

  dimension: application_bundle_id {
    type: string
    sql: ${TABLE}."APPLICATION_BUNDLE_ID" ;;
  }

  dimension: application_invocation {
    type: string
    sql: ${TABLE}."APPLICATION_INVOCATION" ;;
  }

  dimension: application_version {
    type: string
    sql: ${TABLE}."APPLICATION_VERSION" ;;
  }

  dimension: battery_level {
    type: string
    sql: ${TABLE}."BATTERY_LEVEL" ;;
  }

  dimension: battery_percentage {
    type: number
    sql: ${TABLE}."BATTERY_PERCENTAGE" ;;
  }

  dimension: boot_loader_version {
    type: string
    sql: ${TABLE}."BOOT_LOADER_VERSION" ;;
  }

  dimension: capabilities_pin {
    type: yesno
    sql: ${TABLE}."CAPABILITIES_PIN" ;;
  }

  dimension: charging {
    type: yesno
    sql: ${TABLE}."CHARGING" ;;
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

  dimension: device_id {
    type: string
    sql: ${TABLE}."DEVICE_ID" ;;
  }

  dimension: device_modelnumber {
    type: string
    sql: ${TABLE}."DEVICE_MODELNUMBER" ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}."DEVICE_NAME" ;;
  }

  dimension: device_os {
    type: string
    sql: ${TABLE}."DEVICE_OS" ;;
  }

  dimension: device_vendor_id {
    type: string
    sql: ${TABLE}."DEVICE_VENDOR_ID" ;;
  }

  dimension: device_version {
    type: string
    sql: ${TABLE}."DEVICE_VERSION" ;;
  }

  dimension: empty_battery_percentage {
    type: yesno
    sql: ${TABLE}."EMPTY_BATTERY_PERCENTAGE" ;;
  }

  dimension: emv_ksn {
    type: string
    sql: ${TABLE}."EMV_KSN" ;;
  }

  dimension: firmware_version {
    type: string
    sql: ${TABLE}."FIRMWARE_VERSION" ;;
  }

  dimension: hardware_uid {
    type: string
    sql: ${TABLE}."HARDWARE_UID" ;;
  }

  dimension: hardware_version {
    type: string
    sql: ${TABLE}."HARDWARE_VERSION" ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: limitrequest_id {
    type: string
    sql: ${TABLE}."LIMITREQUEST_ID" ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}."MANUFACTURER" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."MERCHANT_ID" ;;
  }

  dimension: merchant_token {
    type: string
    sql: ${TABLE}."MERCHANT_TOKEN" ;;
  }

  dimension: payment_info_capability {
    type: string
    sql: ${TABLE}."PAYMENT_INFO_CAPABILITY" ;;
  }

  dimension: payment_info_sub_type {
    type: string
    sql: ${TABLE}."PAYMENT_INFO_SUB_TYPE" ;;
  }

  dimension: payment_info_type {
    type: string
    sql: ${TABLE}."PAYMENT_INFO_TYPE" ;;
  }

  dimension: pin_ksn {
    type: string
    sql: ${TABLE}."PIN_KSN" ;;
  }

  dimension: sdk_version {
    type: string
    sql: ${TABLE}."SDK_VERSION" ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}."SERIAL_NUMBER" ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}."TIMEZONE" ;;
  }

  dimension: track_ksn {
    type: string
    sql: ${TABLE}."TRACK_KSN" ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}."TRANSACTION_ID" ;;
  }

  dimension: usb_connected {
    type: yesno
    sql: ${TABLE}."USB_CONNECTED" ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [device_name]
  }
}
