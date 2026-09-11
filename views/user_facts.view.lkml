view: user_facts {

  derived_table: {
    explore_source: orders_customers {
      column: user_id { field: order_items.user_id }
      column: total_sale_price { field: order_items.total_sale_price }
    }
  }
  dimension: user_id {
    description: ""
    type: number
  }
  dimension: total_sale_price {
    primary_key: yes
    description: "Total revenue from all items, including returned"
    value_format: "$#,##0.00"
    type: number
  }

measure: average_lfetime {
  type: average
  value_format_name: usd
  sql: ${total_sale_price} ;;
}
}
