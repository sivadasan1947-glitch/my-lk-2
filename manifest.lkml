connection: "your_database_connection"  # Replace with your actual database connection name

include: "/views/**/*.view.lkml"
include: "/dashboards/*.dashboard.lookml"

explore: fact_core {
  label: "Fact Core Explore"
  description: "Explore for analyzing fact_core table data"
}

explore: spend_anomaly {
  label: "Spend Anomaly Explore"
  description: "Explore for spend anomalies by subchannel"
}
