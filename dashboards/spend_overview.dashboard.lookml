# This dashboard includes charts for spend by subchannel, anomalies, and other key metrics.

dashboard: spend_overview {
  title: "Spend Overview Dashboard"
  layout: newspaper

  filters: [
    {
      name: "Date Range"
      title: "Date Range"
      type: field_filter
      default_value: "30 days"
      allow_multiple_values: no
      required: no
      ui_config: {
        type: relative_timeframes
        display: inline
      }
      model: your_model_name  # Replace with your model name
      explore: fact_core
      listens_to_filters: []
      field: fact_core.record_date
    }
  ]

  elements: [
    {
      name: "Spend by Subchannel"
      title: "Spend by Subchannel"
      model: your_model_name
      explore: fact_core
      type: looker_bar
      fields: [fact_core.channel_enriched, fact_core.total_spend]
      sorts: [fact_core.total_spend desc]
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      listen: {
        Date Range: fact_core.record_date
      }
      row: 0
      col: 0
      width: 12
      height: 8
    },
    {
      name: "Spend Anomalies"
      title: "Spend Anomalies (Yesterday vs 30-Day Avg)"
      model: your_model_name
      explore: spend_anomaly
      type: looker_grid
      fields: [spend_anomaly.subchannel, spend_anomaly.yesterday_spend, spend_anomaly.avg_daily_spend, spend_anomaly.pct_difference]
      sorts: [spend_anomaly.pct_difference desc]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: true
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      conditional_formatting: [
        {
          type: along a scale...
          value: ~
          background_color: ~
          font_color: ~
          color_application: {
            collection_id: "7c56cc21-66e4-41c9-81ce-a60e1c3967b2"
            palette_id: "5b53cd25-8585-4a6d-9eba-eb920730d951"
            options: {
              steps: 5
              constraints: {
                min: {
                  type: minimum
                }
                mid: {
                  type: number
                  value: 0
                }
                max: {
                  type: maximum
                }
              }
              mirror: true
              reverse: false
              stepped: false
            }
          }
          bold: false
          italic: false
          strikethrough: false
          fields: [spend_anomaly.pct_difference]
        }
      ]
      listen: {}
      row: 0
      col: 12
      width: 12
      height: 8
    },
    {
      name: "Clicks by Channel"
      title: "Clicks by Channel"
      model: your_model_name
      explore: fact_core
      type: looker_column
      fields: [fact_core.channel, fact_core.total_clicks]
      sorts: [fact_core.total_clicks desc]
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      listen: {
        Date Range: fact_core.record_date
      }
      row: 8
      col: 0
      width: 12
      height: 8
    },
    {
      name: "Revenue Projections"
      title: "DA 6M Revenue Projection by Subchannel"
      model: your_model_name
      explore: fact_core
      type: looker_bar
      fields: [fact_core.channel_enriched, fact_core.da_6m_revenue_projection]
      sorts: [fact_core.da_6m_revenue_projection desc]
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      listen: {
        Date Range: fact_core.record_date
      }
      row: 8
      col: 12
      width: 12
      height: 8
    }
    # Add more elements/charts as needed for additional metrics like FTDs, conversions, etc.
  ]
}
