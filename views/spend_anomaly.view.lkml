# This derived view calculates spend by subchannel (channel_enriched) where yesterday's spend is 20% higher or lower than the average over the last 30 days before yesterday.

view: spend_anomaly {
  derived_table: {
    sql:
      WITH daily_spend AS (
        SELECT
          channel_enriched AS subchannel,
          record_date,
          SUM(spend) AS daily_spend
        FROM `your_dataset.fact_core`  -- Replace with your actual dataset and table
        WHERE record_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY)
        GROUP BY 1, 2
      ),
      avg_spend AS (
        SELECT
          subchannel,
          AVG(daily_spend) AS avg_daily_spend
        FROM daily_spend
        WHERE record_date BETWEEN DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY) AND DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY)  -- Average over 30 days before yesterday
        GROUP BY 1
        HAVING avg_daily_spend > 0  -- Avoid division by zero
      ),
      yesterday_spend AS (
        SELECT
          subchannel,
          daily_spend AS yesterday_spend
        FROM daily_spend
        WHERE record_date = DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY)
      )
      SELECT
        y.subchannel,
        y.yesterday_spend,
        a.avg_daily_spend,
        (y.yesterday_spend - a.avg_daily_spend) / a.avg_daily_spend AS pct_difference
      FROM yesterday_spend y
      INNER JOIN avg_spend a ON y.subchannel = a.subchannel
      WHERE ABS((y.yesterday_spend - a.avg_daily_spend) / a.avg_daily_spend) >= 0.20
    ;;
  }

  dimension: subchannel {
    type: string
    sql: ${TABLE}.subchannel ;;
  }

  dimension: yesterday_spend {
    type: number
    sql: ${TABLE}.yesterday_spend ;;
    value_format_name: usd
  }

  dimension: avg_daily_spend {
    type: number
    sql: ${TABLE}.avg_daily_spend ;;
    value_format_name: usd
  }

  dimension: pct_difference {
    type: number
    sql: ${TABLE}.pct_difference ;;
    value_format_name: percent_2
  }

  measure: count_anomalies {
    type: count
  }
}
