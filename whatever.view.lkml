view: whatever {
  derived_table: {
    sql: SELECT * FROM demo_db.user_data
      ;;
    sql_trigger_value: test ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: max_num_orders {
    type: string
    sql: ${TABLE}.max_num_orders ;;
  }

  dimension: total_num_orders {
    type: string
    sql: ${TABLE}.total_num_orders ;;
  }

  set: detail {
    fields: [id, user_id, max_num_orders, total_num_orders]
  }
}
