
view: persons {

  sql_table_name: bigquery-samples.nested.persons_living ;;

  dimension: id {
    primary_key: yes
    sql: ${TABLE}.fullName ;;
  }

  dimension: fullName {label: "Full Name"}

  dimension: kind {}

  dimension: age {type:number}

  dimension: citiesLived {hidden:yes}

  dimension: phoneNumber {hidden:yes}

  measure: average_age {
    type: average
    sql: ${age} ;;
    drill_fields: [fullName,age]
  }

  measure: count {
    type: count
    drill_fields: [fullName, cities_lived.place_count, age]
  }
}
