
view: persons_cities_lived {

  dimension: id {
    primary_key: yes
    sql: CONCAT(CAST(${persons.fullName} AS STRING),'|', CAST(${place} AS STRING)) ;;
  }

  dimension: place {}

  dimension: numberOfYears {
    label: "Number Of Years"
    type: number
  }

  measure: place_count {
    type: count
    drill_fields: [place, persons.count]
  }

  measure: total_years {
    type: sum
    sql: ${numberOfYears} ;;
    drill_fields: [persons.fullName, persons.age, place, numberOfYears]
  }

}
