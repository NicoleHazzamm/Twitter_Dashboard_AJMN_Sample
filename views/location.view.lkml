view: location {
  sql_table_name: `Twitter_test_data2_tweet.location`
    ;;
  drill_fields: [location_id]

  dimension: location_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.LocationID ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.StateCode ;;
  }

  measure: count {
    type: count
    drill_fields: [location_id]
  }
}
