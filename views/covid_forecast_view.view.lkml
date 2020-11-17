view: covid_forecast_view {
  sql_table_name: `helpful-argon-253816.vaccine_distro.covid_forecast_view`
    ;;

  measure: actual_confirmed {
    type: number
    value_format_name: decimal_0
    sql: ${TABLE}.actual_confirmed ;;
    label: "Actual Confirmed Cases"
  }

  dimension: bounds {
    type: string
    sql: ${TABLE}.bounds ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  measure: error{
    type: number
    value_format_name: decimal_0
    sql: ${TABLE}.error ;;
    label: "Forecast Error"
  }

  measure: forecast {
    type: number
    value_format_name: decimal_0
    sql: ${TABLE}.forecast ;;
    label: "Forecasted Cases"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
