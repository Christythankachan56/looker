connection: "looker-pixel-perfect-poc"

# include all the views
include: "/views/**/*.view"

datagroup: test_new_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "2 hour"
}

persist_with: test_new_default_datagroup

explore: event_searches {}

explore: searches {}

explore: mydata {
  join: my_data_custom_fields {
    view_label: "Custom String : Fields"
    sql: LEFT JOIN UNNEST(${mydata.config}) as my_data_custom_fields ;;
    sql_where: ${my_data_custom_fields.type} = 'STRING'  ;;
    relationship: one_to_many
  }

}

explore: mydata2 {
  join: my_data_custom_fields_2 {
    view_label: "Custom String : Fields"
    sql: LEFT JOIN UNNEST(${mydata2.config}) as my_data_custom_fields_2 ;;
    relationship: one_to_many
  }
}
