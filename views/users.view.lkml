view: users {
  sql_table_name: "CLIPDW_PROVISIONING"."USERS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
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

  dimension_group: current_sign_in {
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
    sql: ${TABLE}."CURRENT_SIGN_IN_AT" ;;
  }

  dimension: current_sign_in_ip {
    type: string
    sql: ${TABLE}."CURRENT_SIGN_IN_IP" ;;
  }

  dimension_group: date_of_birth {
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
    sql: ${TABLE}."DATE_OF_BIRTH" ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: email_verification_code {
    type: string
    sql: ${TABLE}."EMAIL_VERIFICATION_CODE" ;;
  }

  dimension_group: email_verification_expires {
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
    sql: ${TABLE}."EMAIL_VERIFICATION_EXPIRES_AT" ;;
  }

  dimension: encrypted_password {
    type: string
    sql: ${TABLE}."ENCRYPTED_PASSWORD" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension_group: last_sign_in {
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
    sql: ${TABLE}."LAST_SIGN_IN_AT" ;;
  }

  dimension: last_sign_in_ip {
    type: string
    sql: ${TABLE}."LAST_SIGN_IN_IP" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."MERCHANT_ID" ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}."MOBILE" ;;
  }

  dimension: mobile_verification_code {
    type: string
    sql: ${TABLE}."MOBILE_VERIFICATION_CODE" ;;
  }

  dimension_group: mobile_verification_expires {
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
    sql: ${TABLE}."MOBILE_VERIFICATION_EXPIRES_AT" ;;
  }

  dimension_group: password_updated {
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
    sql: ${TABLE}."PASSWORD_UPDATED_AT" ;;
  }

  dimension: preferred_country {
    type: string
    sql: ${TABLE}."PREFERRED_COUNTRY" ;;
  }

  dimension_group: remember_created {
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
    sql: ${TABLE}."REMEMBER_CREATED_AT" ;;
  }

  dimension_group: reset_password_sent {
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
    sql: ${TABLE}."RESET_PASSWORD_SENT_AT" ;;
  }

  dimension: reset_password_token {
    type: string
    sql: ${TABLE}."RESET_PASSWORD_TOKEN" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}."ROLE" ;;
  }

  dimension: roles {
    type: string
    sql: case
            when (${role} = 'ADMIN' or ${role}='admin') THEN 'ADMIN'
            when (${role} = 'CASHIER' or ${role}='cashier') THEN 'CASHIER'
            when (${role} = 'FINANCE' or ${role}='finance') THEN 'FINANCE'
            when (${role} = 'MANAGER' or ${role}='manager') THEN 'MANAGER'
            end ;;
  }

  dimension: second_last_name {
    type: string
    sql: ${TABLE}."SECOND_LAST_NAME" ;;
  }

  dimension: sign_in_count {
    type: number
    sql: ${TABLE}."SIGN_IN_COUNT" ;;
  }

  dimension: soft_deleted {
    type: number
    sql: ${TABLE}."SOFT_DELETED" ;;
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

  dimension: verified_email {
    type: number
    sql: ${TABLE}."VERIFIED_EMAIL" ;;
  }

  dimension: verified_mobile {
    type: number
    sql: ${TABLE}."VERIFIED_MOBILE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dms_filename, last_name, first_name, second_last_name]
  }
}
