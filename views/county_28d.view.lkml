view: county_28d {
    sql_table_name: `bigquery-public-data.covid19_public_forecasts.county_28d`
      ;;

    dimension: county_fips_code {
      type: string
      map_layer_name: us_counties_fips
##  label: {{ county_name._value }} ;;
      label: "{{ county_name._value }} "
      html: {{ county_name._value }} ;;
      sql: ${TABLE}.county_fips_code ;;
    }

    dimension: county_name {
      type: string
      sql: ${TABLE}.county_name ;;
    }

    dimension: cumulative_confirmed {
      type: number
      sql: ${TABLE}.cumulative_confirmed ;;
    }

    dimension: cumulative_confirmed_ground_truth {
      type: number
      sql: ${TABLE}.cumulative_confirmed_ground_truth ;;
    }

    dimension: cumulative_deaths {
      type: number
      sql: ${TABLE}.cumulative_deaths ;;
    }

    dimension: cumulative_deaths_ground_truth {
      type: number
      sql: ${TABLE}.cumulative_deaths_ground_truth ;;
    }

    dimension_group: forecast {
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
      sql: ${TABLE}.forecast_date ;;
    }

    dimension: hospitalized_patients {
      type: number
      sql: ${TABLE}.hospitalized_patients ;;
    }

    dimension: hospitalized_patients_ground_truth {
      type: number
      sql: ${TABLE}.hospitalized_patients_ground_truth ;;
    }

    dimension: new_confirmed {
      type: number
      sql: ${TABLE}.new_confirmed ;;
    }

    dimension: new_confirmed_ground_truth {
      type: number
      sql: ${TABLE}.new_confirmed_ground_truth ;;
    }

    dimension: new_deaths {
      type: number
      sql: ${TABLE}.new_deaths ;;
    }

    dimension: new_deaths_ground_truth {
      type: number
      sql: ${TABLE}.new_deaths_ground_truth ;;
    }

    dimension_group: prediction {
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
      sql: ${TABLE}.prediction_date ;;
    }

    dimension: recovered {
      type: number
      sql: ${TABLE}.recovered ;;
    }

    dimension: recovered_documented_ground_truth {
      type: number
      sql: ${TABLE}.recovered_documented_ground_truth ;;
    }

    dimension: state_name {
      type: string
      map_layer_name: us_states
      drill_fields: [county_fips_code]
      sql: ${TABLE}.state_name ;;
    }
    dimension: distinct_key {
      sql: ${county_fips_code} || ${prediction_date}  ;;
    }
    measure: count {
      type: count
      drill_fields: [county_name, state_name]
    }

    measure: sum_new_confirmed {
      type: sum_distinct
      value_format_name: decimal_0
      sql_distinct_key: ${distinct_key} ;;
      sql: ${new_confirmed} ;;
    }
  }
