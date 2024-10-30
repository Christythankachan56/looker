connection: "looker_demo"

# include all the views
include: "/views/**/*.view"

datagroup: test_new_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "2 hour"
}

persist_with: test_new_default_datagroup

explore: event_searches {}

explore: searches {}
