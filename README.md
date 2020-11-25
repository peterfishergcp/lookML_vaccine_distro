# Partner Covid19 Dashboards - Examples

Contributors to this Project:
**Peter Fisher**


This is set of Demo Dashboards and LookML that leverage BigQuery Public Covid19 Datasets.
These can be used for demo purposes, and they can be used as examples of "how to code" to build highly effective Looker dashboards.

The main table we use "bigquery-public-data.covid19_public_forecasts.county_14d" which is where Google publishes its 14 Day forecast of covid19 cases.

We designed two Looker dashboards, one that starts at the US Level that can be filtered by State, that can then Drill Down into the State and County level detail. The drill down feature is passing State Parameter to the County Dashboard. So this is an example of report to report linking, which is a common requirements in dashboards deployments.

Another great feature is when you right mouse click on the Us Map and select a State, you will see that you can drill down into County, which gives you a preview of the County Cases without having to leave the dashboard, as well it has drill out features, that take you a more detailed State Dashboard. You can also drill out to external systems or to external sources like Google News. Both cases are examples of passing state as a parameter to another dashboard, and to an external website.

You can find how we did this in the County_14d view, where you can see the lookML model that we used for the specific dimension: state_name

dimension: state_name {
type: string
map_layer_name: us_states
drill_fields: [county_name]
sql: ${TABLE}.state_name ;;
link: {
  label: "{{value}} State Dashboard"
  url: "/dashboards-next/864?State+Name={{ value }}"
  icon_url: "http://www.looker.com/favicon.ico"
}
link: {
  label: "{{value}} State Covid News"
  url: "https://news.google.com/search?q={{ value }}+covid&hl=en-US&gl=US&ceid=US:en"
  icon_url: "https://www.google.com/s2/favicons?domain_url=http://www.news.google.com"
}
}

**Please Note - You would need to update the dashboard number that you want to link to. In this example /dashboards-next/864?State+Name={{ value }} would need to updated to have /dashboards-next/yourdashboardnumber?State+Name={{ value }}**


[Screenshot: State Drill In and Out](https://github.com/peterfishergcp/GlobalPublicSector/blob/main/State%2BLocal/COVID-19%20Vaccination/vaccine_distro/images/Drillintoandout.png)
[More Information and Examples - Linking in Looker](https://docs.looker.com/reference/field-params/link)
[More Information and Examples - Custom-Drilling-Using-HTML-and-Link](https://help.looker.com/hc/en-us/articles/360001288228-Custom-Drilling-Using-HTML-and-Link)


These dashboards leverage best practice in dashboard design, where there are high level metrics at the top, with the delta or % change from yesterday included underneath. This is a great technique and demo concept, and to create these high level metrics we used  custom fields to calculate prior day balances, and then calculate the delta. So those are excellent examples to copy and are easy to see how they created.

Screenshots:
[High Level Metrics Prior Day Delta](https://github.com/peterfishergcp/GlobalPublicSector/blob/main/State%2BLocal/COVID-19%20Vaccination/vaccine_distro/images/highlevel_metric_vs_priorday.png)
[Report Example](https://github.com/peterfishergcp/GlobalPublicSector/blob/main/State%2BLocal/COVID-19%20Vaccination/vaccine_distro/images/highlevelreportmetric.jpg)
[Creating Custom Fields Prior Day](http://github.com/peterfishergcp/GlobalPublicSector/blob/main/State%2BLocal/COVID-19%20Vaccination/vaccine_distro/images/customfields.png)


## Machine Learning and Forecasting with BigQuery and Looker

In order to better manage and anitipatiate vaccine demand and new cases, we are using ML models to help predict the future. In this example, we are leveraging the Google Forecast ML model which updates the COVID19 Public DataSets, like "bigquery-public-data.covid19_public_forecasts.county_14d". However, the ML model is not exposed and it not public.
[Google Cloud, Harvard Global Public Health release improved COVID-19 Public Forecasts, share lessons learned](https://cloud.google.com/blog/products/ai-machine-learning/google-and-harvard-improve-covid-19-forecasts)

Harvard Global Health Institute and Google Cloud have been working the past three months to improve the COVID-19 Public Forecasts, to give first responders and healthcare organizations the best possible information to prepare for what lies ahead.

These forecasts use AI to provide a projection of COVID-19 cases, deaths, and other metrics for U.S. counties and states. Since their original release, the COVID-19 Public Forecasts are now used by many organizations across the United States, and have been significantly improved in five major ways:

1. Longer forecasts & confidence intervals. When initially launched, the COVID-19 Public Forecasts included predictions for 14 days in the future. They now include predictions for a 28-day horizon.
2. Improved model quality. The accuracy of the model has continuously improved over time and is retrained daily as more data becomes available. Since the forecasts were first published, we’ve seen the predictions improve by approximately 50%.
3. Ability to expand to other countries. We have added support for expanding the COVID-19 Public Forecasts to other countries
4. Customized forecasts. Since the launch in August, we have worked with many organizations to better understand how these forecasts can help. In the process we have learned that many organizations have specific needs that go beyond just consuming our public forecast, such as wanting to use their own datasets as inputs. To that end, we have turned the initial forecasting model into a system that is customizable to new problems and datasets. We are working with public sector and healthcare leaders to help them create custom forecasts for their states and hospitals.
5. What-if analysis for informing policy decisions. We have also seen significant interest in using the forecasting model to ask “what-if” questions to help make better-informed policy decisions.


*In order to help Partners learn how to leverage BigQuery ML Models and consume them in Looker, we can leverage a public COVID Forecast ML Model*

[Analyzing COVID-19 with BigQuery](https://medium.com/google-cloud/analyzing-covid-19-with-bigquery-13701a3a785)
WRITTEN BY Lak Lakshmanan Data Analytics & AI @ Google Cloud



**Please Note:This is an extrapolation of historical trends, and does not take into account all the other factors that affect the number of confirmed COVID cases. It’s not meant to predict actual outcomes. Instead, it’s meant to extrapolate what will happen if things stay the same, which is not likely. So this is a good use of ML, but also highlights some of it's limitations. As we will see when look at the confidence bounds and error rate when comparing forecast cases against actual cases.**

In BigQuery - I used this model that has two steps.
**Step 1 is to create the model**
**Step 2 is to store the comparison of what was forecasted with actual cases, to better understand how accurate the model is.**

CREATE OR REPLACE MODEL Insertyourdatasetnamehere.numreports_forecast
OPTIONS(model_type='ARIMA',
       time_series_data_col='num_reports',
       time_series_timestamp_col='date') AS
SELECT
   date, LOG(SUM(confirmed)) num_reports
FROM `bigquery-public-data.covid19_jhu_csse.summary`
WHERE country_region = 'US'
AND date <= DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY)
GROUP BY date
ORDER BY date ASC
;


SELECT date, forecast
  , TO_JSON_STRING([fhoffa.x.int(confidence_interval_lower_bound), fhoffa.x.int(confidence_interval_upper_bound)]) bounds
  , confirmed actual_confirmed, ROUND((confirmed-forecast)/confirmed * 100,1) error
FROM (
  SELECT DATE(forecast_timestamp) date, fhoffa.x.int(EXP(forecast_value)) AS forecast
      , EXP(confidence_interval_lower_bound) confidence_interval_lower_bound
      , EXP(confidence_interval_upper_bound) confidence_interval_upper_bound
  FROM ML.FORECAST(MODEL Insertyourdatasetnamehere.numreports_forecast,
  STRUCT(14 AS horizon, 0.9 AS confidence_level))
) JOIN (
  SELECT date, SUM(confirmed) confirmed
  FROM `bigquery-public-data.covid19_jhu_csse.summary`
  WHERE country_region = 'US'
  GROUP BY 1
)
USING(date)
ORDER BY date



**Please Note - You would need replace "Insertyourdatasetnamehere".numreports_forecast with your BigQuery DataSet at both places: CREATE OR REPLACE MODEL Insertyourdatasetnamehere.numreports_forecast, and FROM ML.FORECAST(MODEL Insertyourdatasetnamehere.numreports_forecast**


**How to publish a daily forecast:**
To get a daily forecast, we can create a script out of the two queries. This is as simple as writing the two SQL statements one after the other, making sure to end the first one with a semicolon. Then, click on “Schedule query” to run this every day:

![BigQuery Schedule](https://miro.medium.com/max/1050/0*NgNnCDVxqctsYhs_)


The step 2 in the model, is to create a table that holds the results of the model comparison against actual cases.
I created a view based on numreports_forecast that can be exposed to
