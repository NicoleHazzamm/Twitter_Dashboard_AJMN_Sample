view: user {
  sql_table_name: `Twitter_test_data2_tweet.user`
    ;;
  drill_fields: [user_id]

  dimension: user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  measure: count {
    type: count
    drill_fields: [user_id]
  }
}
