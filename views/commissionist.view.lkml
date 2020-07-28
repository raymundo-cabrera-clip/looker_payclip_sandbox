view: commissionist {
  sql_table_name: "CLIPDW_COMMISSIONIST"."COMMISSIONIST"
    ;;
  drill_fields: [commissionist_id]

  dimension: commissionist_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."COMMISSIONIST_ID" ;;
  }

  dimension: alternative_email {
    type: string
    sql: ${TABLE}."ALTERNATIVE_EMAIL" ;;
  }

  dimension_group: birth {
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
    sql: ${TABLE}."BIRTH_DATE" ;;
  }

  dimension: commissionist_email {
    type: string
    sql: ${TABLE}."COMMISSIONIST_EMAIL" ;;
  }

  dimension: commissionist_type {
    type: string
    sql: ${TABLE}."COMMISSIONIST_TYPE" ;;
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

  dimension: hunter_id {
    type: string
    sql: ${TABLE}."HUNTER_ID" ;;
  }

  dimension: invoicing_information_id {
    type: string
    sql: ${TABLE}."INVOICING_INFORMATION_ID" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}."REGION_NAME" ;;
  }

  dimension: register_status {
    type: string
    sql: ${TABLE}."REGISTER_STATUS" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: subsidiary {
    type: number
    sql: ${TABLE}."SUBSIDIARY" ;;
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

  dimension: age {
    type: number
    sql:  datediff(years, ${birth_date},current_date);;
  }

  measure: count {
    type: count
    drill_fields: [commissionist_id, dms_filename, last_name, first_name, region_name]
  }

  measure: avg_age {
    type: average
    sql: ${age} ;;

  }
}
