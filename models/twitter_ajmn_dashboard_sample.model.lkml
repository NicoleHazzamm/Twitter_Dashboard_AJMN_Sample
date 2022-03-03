connection: "twitter_dataset_ajmn_sample"

# include all the views
include: "/views/**/*.view"

datagroup: twitter_ajmn_dashboard_sample_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: twitter_ajmn_dashboard_sample_default_datagroup

explore: tweet {}

explore: location {}

explore: user {}
