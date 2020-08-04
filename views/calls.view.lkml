view: calls {
  sql_table_name: "CLIPDW_INCONCERT"."CALLS"
    ;;

  dimension: abandoned {
    type: string
    sql: ${TABLE}."ABANDONED" ;;
  }

  dimension: answer_time {
    type: string
    sql: ${TABLE}."ANSWER_TIME" ;;
  }

  dimension: answered {
    type: string
    sql: ${TABLE}."ANSWERED" ;;
  }

  dimension: attention_time {
    type: string
    sql: ${TABLE}."ATTENTION_TIME" ;;
  }

  dimension: call_created_at {
    type: string
    sql: ${TABLE}."CALL_CREATED_AT" ;;
  }

  dimension: caller {
    type: string
    sql: ${TABLE}."CALLER" ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}."CAMPAIGN" ;;
  }

  dimension: cancelled {
    type: string
    sql: ${TABLE}."CANCELLED" ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}."DURATION" ;;
  }

  dimension: finalized_by {
    type: string
    sql: ${TABLE}."FINALIZED_BY" ;;
  }

  dimension: first_agent {
    type: string
    sql: ${TABLE}."FIRST_AGENT" ;;
  }

  dimension: ghost_call {
    type: string
    sql: ${TABLE}."GHOST_CALL" ;;
  }

  dimension: ivr {
    type: string
    sql: ${TABLE}."IVR" ;;
  }

  dimension: last_agent {
    type: string
    sql: ${TABLE}."LAST_AGENT" ;;
  }

  dimension: out_of_working_hours {
    type: string
    sql: ${TABLE}."OUT_OF_WORKING_HOURS" ;;
  }

  dimension: ringing_time {
    type: string
    sql: ${TABLE}."RINGING_TIME" ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}."start" ;;
  }

  dimension: waiting_time {
    type: string
    sql: ${TABLE}."WAITING_TIME" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
