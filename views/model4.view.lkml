view: model4 {
  derived_table: {
    sql:
        SELECT p.* EXCEPT(custom), custom.* EXCEPT(type) FROM
                `elastic-pocs.school.test_produce` as p
                , UNNEST(p.custom) as custom
    ;;
  }

  # sql_table_name: SELECT p.* EXCEPT(custom), custom.* EXCEPT(custom.type) FROM
  #   `elastic-pocs.school.test_produce` as p
  #   , UNNEST(p.custom) as custom ;;

  dimension: product {
    type: string

    sql: product ;;
  }

  dimension: year {
    type: number
    sql: year ;;
  }

  dimension: quarter {
    sql: quarter ;;
  }

  measure: sales {
    type: sum
    sql: sales ;;
  }

}
