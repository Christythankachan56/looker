view: model6 {
  derived_table: {
    sql:
      SELECT p.* EXCEPT(custom), custom.* EXCEPT(type) FROM
      `elastic-pocs.school.test_produce` as p
      , UNNEST(p.custom) as custom
      {% if product_name._parameter_value != 'all' %}
          WHERE
            product = 'Somrthing'
        {% endif %}
      ;;
  }


  parameter: product_name {
    type: string
    required_fields: [product]
  }


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
