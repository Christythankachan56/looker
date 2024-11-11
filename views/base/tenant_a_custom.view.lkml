include: "/views/base/*.view.lkml"

view: +mydata_custom_base {



  dimension: dept_name {
    required_access_grants: [tenant_a]
    group_label: "Custom"
    type: string
    sql: (SELECT d.value from UNNEST(${TABLE}.config) d where d.name = 'dept' LIMIT 1 ) ;;
  }

  measure: fee {
    required_access_grants: [tenant_a]
    group_label: "Custom"
    type: sum

    sql: (SELECT SAFE_CAST(d.value AS FLOAT64) from UNNEST(${TABLE}.config) d where d.name = 'fees' LIMIT 1  ) ;;
  }

  measure: hostel_fee {
    required_access_grants: [tenant_a]
    group_label: "Custom"
    type: sum
    sql: (SELECT SAFE_CAST(d.value AS FLOAT64) from UNNEST(${TABLE}.config) d where d.name = 'hostel_fee' LIMIT 1 ) ;;
  }
}
