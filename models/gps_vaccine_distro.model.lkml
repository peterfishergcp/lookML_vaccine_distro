connection: "covid_vaccine_distro"

# include all the views
include: "/views/**/*.view"

datagroup: pf_vaccine_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pf_vaccine_default_datagroup


explore: state_14d {

  join: covid19_open_data {
    type: left_outer
    sql_on: ${covid19_open_data.subregion1_name}=${state_14d.state_name} and ${covid19_open_data.date_date}=${state_14d.prediction_date};;
    relationship: one_to_one
  }
  fields: [covid19_open_data.date_date,
    covid19_open_data.new_deceased,
    state_14d.new_deaths_ground_truth,
    state_14d.state_name
  ]
  label: "plot"
}

explore: ca_healthcare_facilities {}
explore: chain_pharmacy {}
explore: jjl_capacity {}
explore: state_fips {}
explore: county_14d {}
explore: covid19_open_data {}
