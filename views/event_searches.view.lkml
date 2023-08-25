view: event_searches {
  sql_table_name: `looker_demo.event_searches`
    ;;

  dimension: _user_id {
    type: string
    sql: ${TABLE}._user_id ;;
  }

  dimension: analytics_version {
    type: string
    sql: ${TABLE}.analytics_version ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_recorder {
    type: string
    sql: ${TABLE}.event_recorder ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.event_time ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: impersonator_id {
    type: string
    sql: ${TABLE}.impersonator_id ;;
  }

  dimension: is_admin_request {
    type: string
    sql: ${TABLE}.is_admin_request ;;
  }

  dimension: is_system_generated {
    type: string
    sql: ${TABLE}.is_system_generated ;;
  }

  dimension: minute {
    type: number
    sql: ${TABLE}.minute ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: org_hostname {
    type: string
    sql: ${TABLE}.org_hostname ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.org_id ;;
  }

  dimension: org_id_s {
    type: string
    sql: ${TABLE}.org_id_s ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_version_number {
    type: string
    sql: ${TABLE}.platform_version_number ;;
  }

  dimension: record_insert_time {
    type: string
    sql: ${TABLE}.record_insert_time ;;
  }

  dimension: referer {
    type: string
    sql: ${TABLE}.referer ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}.remote_ip ;;
  }

  dimension: request_id {
    type: string
    sql: ${TABLE}.request_id ;;
  }

  dimension: results_count {
    type: string
    sql: ${TABLE}.results_count ;;
  }

  dimension: search_query {
    type: string
    sql: ${TABLE}.search_query ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.TIME ;;
  }

  dimension: time_string {
    type: string
    sql: ${TABLE}.time_string ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: user_full_name {
    type: string
    sql: ${TABLE}.user_full_name ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: yr {
    type: number
    sql: ${TABLE}.yr ;;
  }

  measure: count {
    type: count
    drill_fields: [org_hostname, user_full_name]
  }
}
