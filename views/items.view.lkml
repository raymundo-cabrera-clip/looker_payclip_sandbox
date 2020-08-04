view: items {
  sql_table_name: "CLIPDW_CATALOG"."ITEMS"
    ;;
  drill_fields: [item_id]

  dimension: item_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ITEM_ID" ;;
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

  dimension: created_by_user_id {
    type: string
    sql: ${TABLE}."CREATED_BY_USER_ID" ;;
  }

  dimension: default_sku {
    type: string
    sql: ${TABLE}."DEFAULT_SKU" ;;
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

  dimension: has_variants {
    type: number
    sql: ${TABLE}."HAS_VARIANTS" ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."MERCHANT_ID" ;;
  }

  dimension: merchant_token {
    type: string
    sql: ${TABLE}."MERCHANT_TOKEN" ;;
  }

  dimension: origin_create {
    type: string
    sql: ${TABLE}."ORIGIN_CREATE" ;;
  }

  dimension: origin_update {
    type: string
    sql: ${TABLE}."ORIGIN_UPDATE" ;;
  }

  dimension: tile_color {
    type: string
    sql: ${TABLE}."TILE_COLOR" ;;
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

  dimension: updated_by_user_id {
    type: string
    sql: ${TABLE}."UPDATED_BY_USER_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [item_id, dms_filename]
  }
}
