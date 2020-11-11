connection: "covid_vaccine_distro"

# include all the views
include: "/views/**/*.view"

datagroup: pf_vaccine_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pf_vaccine_default_datagroup

explore: chain_pharmacy {}
