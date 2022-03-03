view: tweet {
  sql_table_name: `Twitter_test_data2_tweet.tweet`
    ;;
  drill_fields: [tweet_id]

  dimension: tweet_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.TweetID ;;
  }

  dimension: _day {
    type: number
    sql: ${TABLE}._Day ;;
  }

  dimension: _hour {
    type: number
    sql: ${TABLE}._Hour ;;
  }

  dimension: _is_reshare {
    type: yesno
    sql: ${TABLE}._IsReshare ;;
  }

  dimension: _klout {
    type: number
    sql: ${TABLE}._Klout ;;
  }

  dimension: _lang {
    type: string
    sql: ${TABLE}._Lang ;;
  }

  dimension: _likes {
    type: number
    sql: ${TABLE}._Likes ;;
  }

  dimension: _location_id {
    type: number
    sql: ${TABLE}._LocationID ;;
  }

  dimension: _reach {
    type: number
    sql: ${TABLE}._Reach ;;
  }

  dimension: _retweet_count {
    type: number
    sql: ${TABLE}._RetweetCount ;;
  }

  dimension: _sentiment {
    type: number
    sql: ${TABLE}._Sentiment ;;
  }

  dimension: _text {
    type: string
    sql: ${TABLE}._text ;;
  }

  dimension: _user_id {
    type: string
    sql: ${TABLE}._UserID ;;
  }

  dimension: _weekday {
    type: string
    sql: ${TABLE}._Weekday ;;
  }

  measure: count {
    type: count
    drill_fields: [tweet_id]
  }
}
