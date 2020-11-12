view: hostpitals_capacity {
  derived_table: {
    sql: SELECT
        hi.state  AS hospital_state,
        hi.county_name  AS hospital_county_name,
      hi.hospital_type  AS hospital_type,
        COUNT(*) AS healthcare_facilities,
        case when hi.hospital_type='Critical Access Hospitals' then 500*count(*)
             when hi.hospital_type='Acute Care Hospitals' then 300*count(*)
             when hi.hospital_type='Childrens' then 200*count(*)
             when hi.hospital_type='Acute Care - Department of Defense' then 100*count(*)
             when hi.hospital_type='Psychiatric' then 50*count(*)
         end as vaccination_capacity
      FROM `bigquery-public-data.cms_medicare.hospital_general_info` as hi
      --`slg-shared-project.vaccine_distro.county_14d` co,
      --`bigquery-public-data.census_utility.fips_codes_all` cu
      WHERE  (hi.state = 'VA')
      GROUP BY 1,2,3
      ORDER BY 1,2,3 asc
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: hospital_state {
    type: string
    sql: ${TABLE}.hospital_state ;;
  }

  dimension: hospital_county_name {
    type: string
    sql: ${TABLE}.hospital_county_name ;;
  }

  dimension: hospital_type {
    type: string
    sql: ${TABLE}.hospital_type ;;
  }

  dimension: healthcare_facilities {
    type: number
    sql: ${TABLE}.healthcare_facilities ;;
  }

  dimension: vaccination_capacity {
    type: number
    sql: ${TABLE}.vaccination_capacity ;;
  }

  set: detail {
    fields: [hospital_state, hospital_county_name, hospital_type, healthcare_facilities, vaccination_capacity]
  }
}
