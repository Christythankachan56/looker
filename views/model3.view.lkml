include: "/views/base/*.view.lkml"

view: model3 {
  extends: [mydata_custom_base]
  # derived_table: {
  #   sql:

  #     select * EXCEPT(config), calculate(config) as custom from `elastic-pocs.school.test_custom_one` ;  ;;
  # }

  sql_table_name: `elastic-pocs.school.test_custom_one` ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    sql: ${TABLE}.name ;;
  }

}
