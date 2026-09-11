view: user_facts {

  derived_table: {
    sql:
      SELECT
        user_id,
        AVG(sale_price) AS avg_lifetime_spend
      FROM order_items
      GROUP BY user_id
    ;;
  }

  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: avg_lifetime_spend {
    type: number
    sql: ${TABLE}.avg_lifetime_spend ;;
  }

}
