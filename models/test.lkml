connection: "@{db_connection}"


access_grant: tenant_a {
  user_attribute: tenant_name
  allowed_values: [ "A"]
}

access_grant: tenant_b {
  user_attribute: tenant_name
  allowed_values: [ "B" ]
}

# include all the views
include: "/views/**/*.view"

include: "/views/persons/*.view.lkml"

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
    relationship: one_to_many
  }

}




explore: mydata2 {
  label: "Sample Data Set Two"
  join: my_data_custom_fields_2 {
    view_label: "Extra : Fields"
    sql: LEFT JOIN UNNEST(${mydata2.config}) as my_data_custom_fields_2 ;;
    relationship: one_to_many
  }
}

explore: model3 {
  label: "MyData 3 Sample"
}

explore: model4 {
  label: "MyData 4 Sample"
  always_join: [
    mypivoted
  ]
  # join: mypivoted { # Custom Field Name
  #   sql: PIVOT(MAX(value) FOR name IN ('location' as location, 'pin' as pin_code)) as mypivoted;;
  #   relationship: one_to_one
  # }

  join: mypivoted { # Custom Field Name
    view_label: "Custom"
    sql: PIVOT(MAX(value) FOR name IN ({{ _user_attributes['custom_fields'] }})) as mypivoted;;
    relationship: one_to_one
  }
}

explore: model5 {
  label: "MyData 5 Sample"

  always_join: [
    mypivoted
  ]

  join: mypivoted { # Custom Field Name
    view_label: "Custom"
    sql: PIVOT(MAX(value) FOR name IN ({{ _user_attributes['custom_fields'] }})) as mypivoted;;
    relationship: one_to_one
  }

}

explore: model6 {
  label: "MyData 6 Sample"
}


explore: persons {

  # Repeated nested object
  join: persons_cities_lived {
    view_label: "Persons: Cities Lived:"
    sql: LEFT JOIN UNNEST(persons.citiesLived) as persons_cities_lived ;;
    relationship: one_to_many
  }

  # Non repeated nested object
  join: persons_phone_number {
    view_label: "Persons: Phone:"
    sql: LEFT JOIN UNNEST([${persons.phoneNumber}]) as persons_phone_number ;;
    relationship: one_to_one
  }

}
