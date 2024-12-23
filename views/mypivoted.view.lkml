view: mypivoted {

}

view: +mypivoted {


  dimension: location {
    required_access_grants: [tenant_a]
    type: string

  }

  dimension: pin_code {
    required_access_grants: [tenant_a]
    type: number
    sql: SAFE_CAST(${TABLE}.pin AS INT64);;
  }

}

view: +mypivoted {

  measure: maintance {
    required_access_grants: [tenant_b]
    type: sum
    sql: SAFE_CAST(${TABLE}.maintance AS FLOAT64);;
  }

}
