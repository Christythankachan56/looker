
view: mydata {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT id, name, config
          FROM UNNEST(
            ARRAY<
              STRUCT<
                id INT64,
                name STRING,
                config ARRAY<STRUCT<name STRING, value STRING, type STRING>>>>[
                  (1, 'Karthee', [('dept', 'CS', 'STRING'), ('fees', '10.0', 'FLOAT') ]),
                  (2, 'Sudha', [('dept', 'IT', 'STRING'), ('fees', '5.0', 'FLOAT') ])])
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: user_id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    description: "The total number of orders for each user"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: config {hidden:yes}
}
