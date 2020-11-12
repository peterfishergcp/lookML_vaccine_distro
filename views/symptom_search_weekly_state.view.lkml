view: symptom_search_weekly_state {
  sql_table_name: `bigquery-public-data:covid19_symptom_search.counties_state_2020`
    ;;

  dimension:country_region_code{
    type: string
    sql: ${TABLE}.country_region_code ;;
  }
}
