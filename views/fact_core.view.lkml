view: fact_core {
  sql_table_name: `your_dataset.fact_core` ;;  # Replace with your actual dataset and table name

  dimension: record_date {
    type: date
    sql: ${TABLE}.record_date ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: merchant {
    type: string
    sql: ${TABLE}.merchant ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: ppc_ad_group_name {
    type: string
    sql: ${TABLE}.ppc_ad_group_name ;;
  }

  dimension: target_leads {
    type: number
    sql: ${TABLE}.target_leads ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: channel_enriched {
    type: string
    sql: ${TABLE}.channel_enriched ;;
    description: "Assuming this represents subchannel"
  }

  dimension: publisher_id {
    type: string
    sql: ${TABLE}.publisher_id ;;
  }

  dimension: publisher_name {
    type: string
    sql: ${TABLE}.publisher_name ;;
  }

  dimension: sub_pub {
    type: string
    sql: ${TABLE}.sub_pub ;;
  }

  dimension: landing_page {
    type: string
    sql: ${TABLE}.landing_page ;;
  }

  dimension: clickout_page {
    type: string
    sql: ${TABLE}.clickout_page ;;
  }

  dimension_group: clickout_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.clickout_date ;;
  }

  dimension: merchant_position {
    type: string
    sql: ${TABLE}.merchant_position ;;
  }

  dimension: conversion_method {
    type: string
    sql: ${TABLE}.conversion_method ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: bid_strategy {
    type: string
    sql: ${TABLE}.bid_strategy ;;
  }

  dimension: bid_amount {
    type: number
    sql: ${TABLE}.bid_amount ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: date_of_lead {
    type: date
    sql: ${TABLE}.date_of_lead ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: reg {
    type: number
    sql: ${TABLE}.reg ;;
  }

  dimension: untriggered_ftds {
    type: number
    sql: ${TABLE}.untriggered_ftds ;;
  }

  dimension: ftds {
    type: number
    sql: ${TABLE}.ftds ;;
  }

  dimension: da_revenue {
    type: number
    sql: ${TABLE}.da_revenue ;;
  }

  dimension: reg_date {
    type: date
    sql: ${TABLE}.reg_date ;;
  }

  dimension: da_6m_revenue_projection {
    type: number
    sql: ${TABLE}.da_6m_revenue_projection ;;
  }

  dimension: da_6m_leads_projection {
    type: number
    sql: ${TABLE}.da_6m_leads_projection ;;
  }

  dimension: da_6m_reg_projection {
    type: number
    sql: ${TABLE}.da_6m_reg_projection ;;
  }

  dimension: new_da_6m_revenue_projection {
    type: number
    sql: ${TABLE}.new_da_6m_revenue_projection ;;
  }

  dimension: da_12m_reg_projection {
    type: number
    sql: ${TABLE}.da_12m_reg_projection ;;
  }

  dimension: new_da_12m_revenue_projection {
    type: number
    sql: ${TABLE}.new_da_12m_revenue_projection ;;
  }

  dimension: da_12m_leads_projection {
    type: number
    sql: ${TABLE}.da_12m_leads_projection ;;
  }

  dimension: da_1m_leads_projection {
    type: number
    sql: ${TABLE}.da_1m_leads_projection ;;
  }

  dimension: da_1m_reg_projection {
    type: number
    sql: ${TABLE}.da_1m_reg_projection ;;
  }

  dimension: new_da_1m_revenue_projection {
    type: number
    sql: ${TABLE}.new_da_1m_revenue_projection ;;
  }

  dimension: da_3m_leads_projection {
    type: number
    sql: ${TABLE}.da_3m_leads_projection ;;
  }

  dimension: da_3m_reg_projection {
    type: number
    sql: ${TABLE}.da_3m_reg_projection ;;
  }

  dimension: new_da_3m_revenue_projection {
    type: number
    sql: ${TABLE}.new_da_3m_revenue_projection ;;
  }

  dimension: us_da_1m_leads_projection {
    type: number
    sql: ${TABLE}.us_da_1m_leads_projection ;;
  }

  dimension: us_da_1m_reg_projection {
    type: number
    sql: ${TABLE}.us_da_1m_reg_projection ;;
  }

  dimension: us_da_1m_untrig_projection {
    type: number
    sql: ${TABLE}.us_da_1m_untrig_projection ;;
  }

  dimension: us_da_1m_revenue_projection {
    type: number
    sql: ${TABLE}.us_da_1m_revenue_projection ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: session_key {
    type: string
    sql: ${TABLE}.session_key ;;
  }

  dimension: sub_id {
    type: string
    sql: ${TABLE}.sub_id ;;
  }

  dimension: received_leads {
    type: number
    sql: ${TABLE}.received_leads ;;
  }

  dimension: rejected_leads {
    type: number
    sql: ${TABLE}.rejected_leads ;;
  }

  dimension: billable_leads {
    type: number
    sql: ${TABLE}.billable_leads ;;
  }

  dimension: submitted_leads {
    type: number
    sql: ${TABLE}.submitted_leads ;;
  }

  dimension: sladmin_total_clickouts {
    type: number
    sql: ${TABLE}.sladmin_total_clickouts ;;
  }

  dimension: sladmin_unique_clickouts {
    type: number
    sql: ${TABLE}.sladmin_unique_clickouts ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: ppc_campaign_name {
    type: string
    sql: ${TABLE}.ppc_campaign_name ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  dimension: adset {
    type: string
    sql: ${TABLE}.adset ;;
  }

  dimension: fb_audience {
    type: string
    sql: ${TABLE}.fb_audience ;;
  }

  dimension: fb_position {
    type: string
    sql: ${TABLE}.fb_position ;;
  }

  dimension: fb_game {
    type: string
    sql: ${TABLE}.fb_game ;;
  }

  dimension: fb_initiate_checkout {
    type: number
    sql: ${TABLE}.fb_initiate_checkout ;;
  }

  dimension: fb_purchase {
    type: number
    sql: ${TABLE}.fb_purchase ;;
  }

  dimension: fb_reg {
    type: number
    sql: ${TABLE}.fb_reg ;;
  }

  dimension: fb_lead {
    type: number
    sql: ${TABLE}.fb_lead ;;
  }

  dimension: fb_ad_id {
    type: string
    sql: ${TABLE}.fb_ad_id ;;
  }

  dimension: fb_ad_name {
    type: string
    sql: ${TABLE}.fb_ad_name ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: target_reg {
    type: number
    sql: ${TABLE}.target_reg ;;
  }

  dimension: target_ftds {
    type: number
    sql: ${TABLE}.target_ftds ;;
  }

  dimension: target_spend {
    type: number
    sql: ${TABLE}.target_spend ;;
  }

  dimension: target_revenue {
    type: number
    sql: ${TABLE}.target_revenue ;;
  }

  dimension: is_phone_number {
    type: number
    sql: ${TABLE}.is_phone_number ;;
  }

  dimension_group: meta_delivery_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.meta_delivery_time ;;
  }

  dimension_group: meta_process_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.meta_process_time ;;
  }

  dimension: meta_source_a {
    type: string
    sql: ${TABLE}.meta_source_a ;;
  }

  dimension: meta_source_b {
    type: string
    sql: ${TABLE}.meta_source_b ;;
  }

  dimension: ltuid {
    type: string
    sql: ${TABLE}.ltuid ;;
  }

  dimension: is_returning_user {
    type: yesno
    sql: ${TABLE}.is_returning_user ;;
  }

  dimension: competition_draw_id {
    type: string
    sql: ${TABLE}.competition_draw_id ;;
  }

  dimension: competition_list_id {
    type: string
    sql: ${TABLE}.competition_list_id ;;
  }

  dimension: competition_lead_id {
    type: string
    sql: ${TABLE}.competition_lead_id ;;
  }

  # Measures
  measure: total_spend {
    type: sum
    sql: ${spend} ;;
    value_format_name: usd
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
  }

  measure: total_impressions {
    type: sum
    sql: ${impressions} ;;
  }

  measure: total_conversions {
    type: sum
    sql: ${conversions} ;;
  }

  measure: total_ftds {
    type: sum
    sql: ${ftds} ;;
  }

  measure: total_da_revenue {
    type: sum
    sql: ${da_revenue} ;;
    value_format_name: usd
  }

  # Add more measures as needed for dashboards
}
