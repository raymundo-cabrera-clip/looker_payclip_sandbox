view: addresses {
  sql_table_name: "CLIPDW_COMMISSIONIST"."ADDRESSES"
    ;;
  drill_fields: [address_id]

  dimension: address_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ADDRESS_ID" ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}."ADDRESS1" ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}."ADDRESS2" ;;
  }

  dimension: alternative_phone {
    type: string
    sql: ${TABLE}."ALTERNATIVE_PHONE" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: colony {
    type: string
    sql: ${TABLE}."COLONY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
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

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: municipality {
    type: string
    sql: ${TABLE}."MUNICIPALITY" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  dimension: receiver {
    type: string
    sql: ${TABLE}."RECEIVER" ;;
  }

  dimension: reference_house {
    type: string
    sql: ${TABLE}."REFERENCE_HOUSE" ;;
  }

  dimension: reference_location {
    type: string
    sql: ${TABLE}."REFERENCE_LOCATION" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
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
    drill_fields: [address_id, first_name, last_name, dms_filename]
  }
}
