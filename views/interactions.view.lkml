view: interactions {
  sql_table_name: "CLIPDW_INCONCERT"."INTERACTIONS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: actor {
    type: string
    sql: ${TABLE}."ACTOR" ;;
  }

  dimension: actor_name {
    type: string
    sql: ${TABLE}."ACTOR_NAME" ;;
  }

  dimension: answer_time {
    type: string
    sql: ${TABLE}."ANSWER_TIME" ;;
  }

  dimension: attention_time {
    type: string
    sql: ${TABLE}."ATTENTION_TIME" ;;
  }

  dimension: batch_id {
    type: string
    sql: ${TABLE}."BATCH_ID" ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}."CAMPAIGN" ;;
  }

  dimension: completed {
    type: string
    sql: ${TABLE}."COMPLETED" ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: control_agent_time {
    type: string
    sql: ${TABLE}."CONTROL_AGENT_TIME" ;;
  }

  dimension: desertion_time {
    type: string
    sql: ${TABLE}."DESERTION_TIME" ;;
  }

  dimension: direction {
    type: string
    sql: ${TABLE}."DIRECTION" ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}."DISPOSITION" ;;
  }

  dimension: duration_time {
    type: string
    sql: ${TABLE}."DURATION_TIME" ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}."END_DATE" ;;
  }

  dimension: fetch_timestamp {
    type: string
    sql: ${TABLE}."FETCH_TIMESTAMP" ;;
  }

  dimension: first_agent {
    type: string
    sql: ${TABLE}."FIRST_AGENT" ;;
  }

  dimension: first_atte_actor {
    type: string
    sql: ${TABLE}."FIRST_ATTE_ACTOR" ;;
  }

  dimension: forward_process {
    type: string
    sql: ${TABLE}."FORWARD_PROCESS" ;;
  }

  dimension: has_call_back {
    type: string
    sql: ${TABLE}."HAS_CALL_BACK" ;;
  }

  dimension: has_voice_mail {
    type: string
    sql: ${TABLE}."HAS_VOICE_MAIL" ;;
  }

  dimension: hold_time {
    type: string
    sql: ${TABLE}."HOLD_TIME" ;;
  }

  dimension: is_abandoned {
    type: string
    sql: ${TABLE}."IS_ABANDONED" ;;
  }

  dimension: is_call_back {
    type: string
    sql: ${TABLE}."IS_CALL_BACK" ;;
  }

  dimension: is_cancelled {
    type: string
    sql: ${TABLE}."IS_CANCELLED" ;;
  }

  dimension: is_conferenced {
    type: string
    sql: ${TABLE}."IS_CONFERENCED" ;;
  }

  dimension: is_ghost_call_thres_hold {
    type: string
    sql: ${TABLE}."IS_GHOST_CALL_THRES_HOLD" ;;
  }

  dimension: is_goal_management_result {
    type: string
    sql: ${TABLE}."IS_GOAL_MANAGEMENT_RESULT" ;;
  }

  dimension: is_in_bound_abandoned {
    type: string
    sql: ${TABLE}."IS_IN_BOUND_ABANDONED" ;;
  }

  dimension: is_in_bound_attended {
    type: string
    sql: ${TABLE}."IS_IN_BOUND_ATTENDED" ;;
  }

  dimension: is_in_bound_cancelled {
    type: string
    sql: ${TABLE}."IS_IN_BOUND_CANCELLED" ;;
  }

  dimension: is_ivr {
    type: string
    sql: ${TABLE}."IS_IVR" ;;
  }

  dimension: is_long_call_threshold {
    type: string
    sql: ${TABLE}."IS_LONG_CALL_THRESHOLD" ;;
  }

  dimension: is_out_bound_abandoned {
    type: string
    sql: ${TABLE}."IS_OUT_BOUND_ABANDONED" ;;
  }

  dimension: is_out_bound_attended {
    type: string
    sql: ${TABLE}."IS_OUT_BOUND_ATTENDED" ;;
  }

  dimension: is_out_bound_cancelled {
    type: string
    sql: ${TABLE}."IS_OUT_BOUND_CANCELLED" ;;
  }

  dimension: is_sent_to_agent_search {
    type: string
    sql: ${TABLE}."IS_SENT_TO_AGENT_SEARCH" ;;
  }

  dimension: is_short_call_threshold {
    type: string
    sql: ${TABLE}."IS_SHORT_CALL_THRESHOLD" ;;
  }

  dimension: is_taked {
    type: string
    sql: ${TABLE}."IS_TAKED" ;;
  }

  dimension: is_transferred {
    type: string
    sql: ${TABLE}."IS_TRANSFERRED" ;;
  }

  dimension: is_useful {
    type: string
    sql: ${TABLE}."IS_USEFUL" ;;
  }

  dimension: ivr_time {
    type: string
    sql: ${TABLE}."IVR_TIME" ;;
  }

  dimension: last_agent {
    type: string
    sql: ${TABLE}."LAST_AGENT" ;;
  }

  dimension: management_result {
    type: string
    sql: ${TABLE}."MANAGEMENT_RESULT" ;;
  }

  dimension: number_of_transferred {
    type: string
    sql: ${TABLE}."NUMBER_OF_TRANSFERRED" ;;
  }

  dimension: numbers_of_conferenced {
    type: string
    sql: ${TABLE}."NUMBERS_OF_CONFERENCED" ;;
  }

  dimension: original_campaign {
    type: string
    sql: ${TABLE}."ORIGINAL_CAMPAIGN" ;;
  }

  dimension: out_of_hour {
    type: string
    sql: ${TABLE}."OUT_OF_HOUR" ;;
  }

  dimension: outbound_process_id {
    type: string
    sql: ${TABLE}."OUTBOUND_PROCESS_ID" ;;
  }

  dimension: part {
    type: string
    sql: ${TABLE}."PART" ;;
  }

  dimension: preferred_campaign {
    type: string
    sql: ${TABLE}."PREFERRED_CAMPAIGN" ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}."PREFIX" ;;
  }

  dimension: preview_time {
    type: string
    sql: ${TABLE}."PREVIEW_TIME" ;;
  }

  dimension: process {
    type: string
    sql: ${TABLE}."PROCESS" ;;
  }

  dimension: queue_position {
    type: string
    sql: ${TABLE}."QUEUE_POSITION" ;;
  }

  dimension: redial_process {
    type: string
    sql: ${TABLE}."REDIAL_PROCESS" ;;
  }

  dimension: requeued_time {
    type: string
    sql: ${TABLE}."REQUEUED_TIME" ;;
  }

  dimension: ring_back_time {
    type: string
    sql: ${TABLE}."RING_BACK_TIME" ;;
  }

  dimension: ringing_time {
    type: string
    sql: ${TABLE}."RINGING_TIME" ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}."SECTION" ;;
  }

  dimension: sections {
    type: string
    sql: ${TABLE}."SECTIONS" ;;
  }

  dimension: shift {
    type: string
    sql: ${TABLE}."SHIFT" ;;
  }

  dimension: sl_possitive {
    type: string
    sql: ${TABLE}."SL_POSSITIVE" ;;
  }

  dimension: slice {
    type: string
    sql: ${TABLE}."SLICE" ;;
  }

  dimension: source_hangup {
    type: string
    sql: ${TABLE}."SOURCE_HANGUP" ;;
  }

  dimension: start_attention_time {
    type: string
    sql: ${TABLE}."START_ATTENTION_TIME" ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension: time_stamp {
    type: string
    sql: ${TABLE}."TIME_STAMP" ;;
  }

  dimension: total_agents {
    type: string
    sql: ${TABLE}."TOTAL_AGENTS" ;;
  }

  dimension: total_holds {
    type: string
    sql: ${TABLE}."TOTAL_HOLDS" ;;
  }

  dimension: transfer_result {
    type: string
    sql: ${TABLE}."TRANSFER_RESULT" ;;
  }

  dimension: transfer_time {
    type: string
    sql: ${TABLE}."TRANSFER_TIME" ;;
  }

  dimension: transfer_type {
    type: string
    sql: ${TABLE}."TRANSFER_TYPE" ;;
  }

  dimension: trunk_id {
    type: string
    sql: ${TABLE}."TRUNK_ID" ;;
  }

  dimension: trunk_type {
    type: string
    sql: ${TABLE}."TRUNK_TYPE" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: virtual_cc {
    type: string
    sql: ${TABLE}."VIRTUAL_CC" ;;
  }

  dimension: wait_time {
    type: string
    sql: ${TABLE}."WAIT_TIME" ;;
  }

  dimension: workitem_type {
    type: string
    sql: ${TABLE}."WORKITEM_TYPE" ;;
  }

  dimension: wrapup_time {
    type: string
    sql: ${TABLE}."WRAPUP_TIME" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, actor_name]
  }
}
