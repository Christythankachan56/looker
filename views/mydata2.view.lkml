view: mydata2 {

  sql_table_name: `elastic-pocs.school.test_custom_two` ;;

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

  dimension: config {
    hidden:yes
  }
}
