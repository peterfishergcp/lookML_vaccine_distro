view: chain_pharmacy {
  sql_table_name: `vaccine_distro.chain_pharmacy`
    ;;

  dimension: chainpharmacies {
    type: number
    sql: ${TABLE}.chainpharmacies ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
