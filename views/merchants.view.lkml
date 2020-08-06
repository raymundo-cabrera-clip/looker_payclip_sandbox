view: merchants {
  sql_table_name: "CLIPDW_PROVISIONING"."MERCHANTS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: average_transaction {
    type: number
    sql: ${TABLE}."AVERAGE_TRANSACTION" ;;
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

  dimension: downloaded_app {
    type: number
    sql: ${TABLE}."DOWNLOADED_APP" ;;
  }

  dimension: industry_custom_description {
    type: string
    sql: ${TABLE}."INDUSTRY_CUSTOM_DESCRIPTION" ;;
  }

  dimension: industry_id {
    type: string
    sql: ${TABLE}."INDUSTRY_ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: preferred_country {
    type: string
    sql: ${TABLE}."PREFERRED_COUNTRY" ;;
  }

  dimension: preferred_currency {
    type: string
    sql: ${TABLE}."PREFERRED_CURRENCY" ;;
  }

  dimension: privacy_policy_version {
    type: number
    sql: ${TABLE}."PRIVACY_POLICY_VERSION" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: terms_version {
    type: number
    sql: ${TABLE}."TERMS_VERSION" ;;
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

  dimension: website_url {
    type: string
    sql: ${TABLE}."WEBSITE_URL" ;;
  }

  dimension: yearly_volume {
    type: number
    sql: ${TABLE}."YEARLY_VOLUME" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dms_filename, name]
  }
}
