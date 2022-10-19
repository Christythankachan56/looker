view: searches {
  sql_table_name: `looker_demo.searches`
    ;;

  dimension: _user_id {
    type: number
    sql: ${TABLE}._user_id ;;
  }

  dimension: analytics_version {
    type: string
    sql: ${TABLE}.analytics_version ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_recorder {
    type: string
    sql: ${TABLE}.event_recorder ;;
  }

  dimension: event_time {
    type: number
    sql: ${TABLE}.event_time ;;
  }

  dimension: impersonator_id {
    type: number
    sql: ${TABLE}.impersonator_id ;;
  }

  dimension: is_admin_request {
    type: number
    sql: ${TABLE}.is_admin_request ;;
  }

  dimension: is_system_generated {
    type: number
    sql: ${TABLE}.is_system_generated ;;
  }

  dimension: org_hostname {
    type: string
    sql: ${TABLE}.org_hostname ;;
  }

  dimension: org_id_s {
    type: number
    value_format_name: id
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

  dimension_group: record_insert {
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
    sql: ${TABLE}.record_insert_time ;;
  }

  dimension: results_count {
    type: number
    sql: ${TABLE}.results_count ;;
  }

  dimension: search_query {
    type: string
    sql: ${TABLE}.search_query ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}.time ;;
  }

  dimension_group: time_string {
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
    sql: ${TABLE}.time_string ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [org_hostname]
  }
}
