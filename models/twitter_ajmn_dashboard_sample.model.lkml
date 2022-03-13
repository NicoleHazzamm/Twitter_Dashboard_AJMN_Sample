connection: "twitter_dataset_ajmn_sample"

# include all the views
include: "/views/**/*.view"

datagroup: twitter_ajmn_dashboard_sample_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: twitter_ajmn_dashboard_sample_default_datagroup

explore: tweet {}

explore: location {
  join: tweet {
    type: left_outer
    relationship: many_to_one
    sql_on: ${location.location_id} = ${tweet._location_id} ;;
  }
}


# Joining User and tweet table
explore: user {
  join: tweet {
    type: left_outer
    relationship: one_to_many
    sql_on: ${user.user_id} = ${tweet._user_id} ;;
  }
}
