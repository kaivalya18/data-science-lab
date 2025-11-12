from transformers import pipeline
import streamlit as st

st.set_page_config(page_title="Text Summarization using NLP", layout="wide")
st.title("🧠 NLP Text Summarizer")
st.markdown("Paste any article or paragraph below to get a concise summary:")

user_input = st.text_area("Input Text", height=250, placeholder="Enter your text here...")

if st.button("Summarize Text"):
    # ✅ Force PyTorch and disable TensorFlow
    summarizer = pipeline(
        "summarization",
        model="t5-small",
        tokenizer="t5-small",
        framework="pt"   # this line forces PyTorch backend
    )

    text = "summarize: " + user_input
    summary = summarizer(text, max_length=120, min_length=30, do_sample=False)[0]['summary_text']

    st.subheader("🔹 Summary")
    st.write(summary)
