- dashboard: nav_bar
  title: Nav Bar
  description: ''
  preferred_slug: eci2T4q4WdRqukxtNEf8QK
  layout_granularity: granular
  layout: newspaper
  tabs:
  - name: Main
    label: Main
  - name: Analysis 1
    label: Analysis 1
  - name: Analysis 2
    label: Analysis 2
  - name: Analysis 3
    label: Analysis 3
  elements:
  - title: Nb of items per month
    name: Nb of items per month
    model: bootcamp_ecommerce
    explore: orders_customers
    type: looker_line
    fields: [order_items.count_item_sold, order_items.created_month]
    fill_fields: [order_items.created_month]
    sorts: [order_items.created_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Month: order_items.created_month
      Status: order_items.status
    row: 12
    col: 27
    width: 45
    height: 12
    tab_name: Main
  - title: Nb of orders  per users's country
    name: Nb of orders  per users's country
    model: bootcamp_ecommerce
    explore: orders_customers
    type: looker_line
    fields: [order_items.count, users.country]
    sorts: [order_items.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    listen:
      Month: order_items.created_month
      Status: order_items.status
    row: 0
    col: 27
    width: 45
    height: 12
    tab_name: Main
  - title: Nav Bar
    name: Nav Bar
    model: bootcamp_ecommerce
    explore: orders_customers
    type: looker_grid
    fields: [order_items.navbar]
    fill_fields: [order_items.navbar]
    sorts: [order_items.navbar]
    limit: 1
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    table_show_footer: false
    table_enable_pagination: false
    table_page_size_options: 20, 50, 100
    table_column_hover_highlight_enable: false
    table_show_headers: false
    header_font_bold: false
    header_font_italic: false
    cell_font_weight: ''
    cell_font_style: ''
    cell_text_alignment: ''
    table_custom_border_enable: false
    table_custom_border_width:
    table_custom_border_style: solid
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row_groups:
      enabled: false
    title_hidden: true
    listen:
      Month: order_items.created_month
      Status: order_items.status
    row: 0
    col: 0
    width: 19
    height: 24
    tab_name: Main
  filters:
  - name: Month
    title: Month
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: bootcamp_ecommerce
    explore: orders_customers
    listens_to_filters: []
    field: order_items.created_month
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: bootcamp_ecommerce
    explore: orders_customers
    listens_to_filters: []
    field: order_items.status
