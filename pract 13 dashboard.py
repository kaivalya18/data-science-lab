# covid_dashboard.py
import pandas as pd
import plotly.express as px
import streamlit as st

st.set_page_config(page_title="COVID-19 Dashboard", layout="wide")

st.title("🦠 COVID-19 India Data Dashboard")
st.markdown("This dashboard visualizes open government COVID-19 data for decision-making.")

# Load dataset
url = "https://data.covid19india.org/csv/latest/state_wise_daily.csv"
df = pd.read_csv(url)

# Clean and preprocess
df = df.rename(columns={"Date": "date", "Status": "status"})
df["date"] = pd.to_datetime(df["date"])

# Sidebar
st.sidebar.header("🔍 Filter Options")
status_choice = st.sidebar.selectbox("Select Case Type", ["Confirmed", "Recovered", "Deceased"])
state_choice = st.sidebar.selectbox("Select State", df.columns[3:], index=3)

# Filter data
filtered_df = df[df["status"] == status_choice][["date", state_choice]]

# Visualization
fig = px.line(filtered_df, x="date", y=state_choice,
              title=f"{status_choice} Cases in {state_choice} Over Time",
              labels={state_choice: "Cases", "date": "Date"})

st.plotly_chart(fig, use_container_width=True)

# Metrics
latest_value = filtered_df[state_choice].iloc[-1]
avg_cases = filtered_df[state_choice].mean()

st.metric(label=f"Latest {status_choice} Cases", value=int(latest_value))
st.metric(label=f"Average Daily {status_choice} Cases", value=int(avg_cases))

st.markdown("---")
st.write("Data Source: [data.covid19india.org](https://data.covid19india.org)")
