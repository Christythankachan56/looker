view: my_data_custom_fields_2 {
  dimension: name {}
  dimension: value {
    hidden: yes
  }
  dimension: type {
    hidden: yes
  }

  measure: valueforus {
    label: "Field: Value"
    type: sum
    sql: ${value} ;;
  }
}
