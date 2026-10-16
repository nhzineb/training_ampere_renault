view: order_items {
  sql_table_name: `bigquery-public-data.thelook_ecommerce.order_items` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, month_name, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: delivered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.delivered_at ;;
  }
  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.returned_at ;;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  dimension_group: shipped {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.shipped_at ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }


  dimension: navbar {
    label: "Navbar"
    type: yesno
    allow_fill: yes
    sql: true ;;
    html:
    {% assign current_dash = _explore._dashboard_url %}

          {% comment %}
          1. Dynamically build the query string from any active filter wired to the Navbar tile.
          Format: &<Target_Dashboard_Filter_UI_Title>=<Encoded_Filter_Value>
          {% endcomment %}

          {% assign nav_params = "" %}

      {% assign f_month = _filters['order_items.created_month'] | url_encode %}
      {% if f_month != "" %}
      {% assign nav_params = nav_params | append: "&Month=" | append: f_month %}
      {% endif %}

      {% assign f_status = _filters['order_items.status'] | url_encode %}
      {% if f_status != "" %}
      {% assign nav_params = nav_params | append: "&Status=" | append: f_status %}
      {% endif %}

      {% assign f_brand = _filters['products.brand'] | url_encode %}
      {% if f_brand != "" %}
      {% assign nav_params = nav_params | append: "&Brand=" | append: f_brand %}
      {% endif %}

      {% assign f_category = _filters['products.category'] | url_encode %}
      {% if f_category != "" %}
      {% assign nav_params = nav_params | append: "&Category=" | append: f_category %}
      {% endif %}

      {% comment %} Turn the first '&' into '?' if at least one filter is active {% endcomment %}
      {% if nav_params != "" %}
      {% assign nav_params = nav_params | replace_first: "&", "?" %}
      {% endif %}

      <div style="font-family: 'Google Sans', Roboto, sans-serif; padding: 12px; background: #f8f9fa; border-radius: 8px; border: 1px solid #dadce0; text-align: left;">
      <div style="font-size: 16px; font-weight: 700; color: #1a73e8; margin-bottom: 12px; padding-bottom: 8px; border-bottom: 2px solid #1a73e8;">
      🧭 Ampere Analytics Portal
      </div>

      <details open style="margin-bottom: 10px;">
      <summary style="font-weight: 600; font-size: 14px; color: #202124; cursor: pointer; padding: 6px; background: #e8f0fe; border-radius: 4px;">
      📁 1. IVV & Traceability
      </summary>
      <div style="padding-left: 14px; margin-top: 6px;">
      <details open style="margin-bottom: 6px;">
      <summary style="font-weight: 500; font-size: 13px; color: #3c4043; cursor: pointer; padding: 4px;">
      📂 1.1 Last Run Execution
      </summary>
      <div style="padding-left: 16px; margin-top: 4px; font-size: 13px;">
      <a href="/dashboards/12{{ nav_params }}" style="display: block; margin-bottom: 6px; text-decoration: none; {% if current_dash contains '/dashboards/12' %}color: #1a73e8; font-weight: 700;{% else %}color: #5f6368;{% endif %}">📊 Global Last Run Cockpit</a>
      <a href="/dashboards/2{{ nav_params }}" style="display: block; margin-bottom: 6px; text-decoration: none; {% if current_dash contains '/dashboards/2' %}color: #1a73e8; font-weight: 700;{% else %}color: #5f6368;{% endif %}">📈 Test Sets Progression</a>
      </div>
      </details>

      <details open style="margin-bottom: 6px;">
      <summary style="font-weight: 500; font-size: 13px; color: #3c4043; cursor: pointer; padding: 4px;">
      📂 1.2 Requirements (Codebeamer)
      </summary>
      <div style="padding-left: 16px; margin-top: 4px; font-size: 13px;">
      <a href="/dashboards/3{{ nav_params }}" style="display: block; margin-bottom: 6px; text-decoration: none; {% if current_dash contains '/dashboards/3' %}color: #1a73e8; font-weight: 700;{% else %}color: #5f6368;{% endif %}">📋 Horizontal Traceability</a>
      <a href="/dashboards/4{{ nav_params }}" style="display: block; margin-bottom: 6px; text-decoration: none; {% if current_dash contains '/dashboards/4' %}color: #1a73e8; font-weight: 700;{% else %}color: #5f6368;{% endif %}">🔍 Baseline Comparison</a>
      </div>
      </details>
      </div>
      </details>

      <details open style="margin-bottom: 10px;">
      <summary style="font-weight: 600; font-size: 14px; color: #202124; cursor: pointer; padding: 6px; background: #f1f3f4; border-radius: 4px;">
      📁 2. VIP FinOps & Billing
      </summary>
      <div style="padding-left: 14px; margin-top: 6px;">
      <details open style="margin-bottom: 6px;">
      <summary style="font-weight: 500; font-size: 13px; color: #3c4043; cursor: pointer; padding: 4px;">
      📂 2.1 GKE & Cloud Costs
      </summary>
      <div style="padding-left: 16px; margin-top: 4px; font-size: 13px;">
      <a href="/dashboards/11{{ nav_params }}" style="display: block; margin-bottom: 6px; text-decoration: none; {% if current_dash contains '/dashboards/11' %}color: #1a73e8; font-weight: 700;{% else %}color: #5f6368;{% endif %}">💶 VIP Cost Overview</a>
      <a href="/dashboards/6{{ nav_params }}" style="display: block; margin-bottom: 6px; text-decoration: none; {% if current_dash contains '/dashboards/6' %}color: #1a73e8; font-weight: 700;{% else %}color: #5f6368;{% endif %}">⚙️ GKE Namespace Split</a>
      </div>
      </details>
      </div>
      </details>
      </div>
      ;;

    }




  ######--------- measure -----------


  measure: count {
    type: count
    label: "Count of Order Items"
    drill_fields: [detail*]
  }

  measure: count_item_sold{
    label: "Count of Items Sold"
    description: "When an order is placed, the item ordered is immediately marked as sold within the warehouse"
    type: count
    filters: [order_items.status: "Complete, Processing, Shipped"]
  }

  measure: total_sale_price {
    type: sum
    value_format_name: usd
    sql: ${sale_price} ;;
    description: "Total revenue from all items, including returned"
    drill_fields: [detail*]
    html: <font color="blue">{{rendered_value}}</font> ;;
  }


  measure: average_sale_price {
    type: average
    value_format_name: usd
    sql: ${sale_price} ;;
    filters: [order_items.status: "Complete, Processing, Shipped"]
    description: "Average sales from items sold"

    #Format based on the conditions logic
    html: {% if value >= 600 %}
          <font color="green">{{rendered_value}}</font>
          {% elsif value >= 400 and value < 600 %}
          <font color="goldenrod">{{rendered_value}}</font>
          {% else %}
          <font color="red">{{rendered_value}}</font>
          {% endif %} ;;
  }


  measure: website_totalsales {
    type: sum
    sql: ${sale_price} ;;
    filters: [users.traffic_source: "Email"]
    description: "Total sales for users that signed up via email traffic source"
    value_format_name: usd
  }


  measure: first_order {
    type: date
    sql: MIN(${created_date}) ;;

  }

  measure: latest_order {
    type: date
    sql: MAX(${created_date}) ;;

  }

#--------

  # measure: dynamic_count {
  #   type: count_distinct
  #   sql: ${TABLE}.{% parameter item_to_count %} ;;
  #   label_from_parameter: item_to_count
  # }


  # # ----- parameter ------

  # parameter: item_to_count {
  #   type: unquoted
  #   allowed_value: {
  #     label: "Count of customers"
  #     value: "user_id"
  #   }
  #   allowed_value: {
  #     label: "Count of orders "
  #     value: "order_id"
  #   }
  #   allowed_value: {
  #     label: "Products"
  #     value: "product_id"
  #   }

  #   allowed_value: {
  #     label: "Count of order items"
  #     value: "id"
  #   }
  # }



  # dimension: welcome_message {
  #   type: string
  #   sql: 1 ;;
  #   html: Welcome {{ _user_attributes['first_name']}} {{ _user_attributes['last_name']}}! ;;
  # }




  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  users.last_name,
  users.id,
  users.first_name,
  inventory_items.id,
  inventory_items.product_name,
  products.name,
  products.id,
  orders.order_id
  ]
  }

}
