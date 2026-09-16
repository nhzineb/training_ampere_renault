include: "/views/users.view"
include: "/views/order_items.view"
include: "/explores/order_items_last_30_days.explore.lkml"
include: "/views/geography_dimensions.view.lkml"

explore: order_items_last_30_days {
  extends: [order_items_last_30_days]
  view_name: order_items
  always_filter: {
    filters: [order_items.created_date: "30 days"]
  }
}
