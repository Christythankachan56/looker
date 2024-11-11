include: "/views/base/*.view.lkml"

view: +mydata_custom_base {



  dimension: age {
    required_access_grants: [tenant_b]
    group_label: "Custom"
    type: number
    sql: (SELECT SAFE_CAST(d.value AS INT64) from UNNEST(${TABLE}.config) d where d.name = 'age' LIMIT 1 ) ;;
  }

}
