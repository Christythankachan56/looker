view: my_data_custom_fields {
  dimension: name {}
  dimension: value {
    hidden: yes
  }
  dimension: type {
    hidden: yes
  }

  measure: valueforus {
    label: "Field: Value"
    sql: ANY_VALUE(${value}) ;;
  }
}
