view: user_facts {
  derived_table: {
    sql:
      SELECT
      users.id AS user_id,
      COALESCE(SUM(order_items.sale_price), 0) AS lifetime_spend
      FROM `bigquery-public-data.thelook_ecommerce.order_items` AS order_items
      LEFT JOIN `bigquery-public-data.thelook_ecommerce.users` AS users
      ON order_items.user_id = users.id
      GROUP BY users.id
    ;;

  }
  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: lifetime_spend {
    type: sum
    sql: ${TABLE}.lifetime_spend ;;
  }
  measure: average_lifetime_spend {
    type: average
    sql: ${TABLE}.lifetime_spend ;;
  }
}
