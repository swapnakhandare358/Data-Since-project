# summarization.py
# Task: Summarize long text into shorter, concise version using BART

import torch
from transformers import pipeline

# Load BART-large-CNN model — best for news and article summarization
# Trained on CNN/DailyMail dataset
summarizer = pipeline(
    "summarization",
    model="facebook/bart-large-cnn",
    device=0 if torch.cuda.is_available() else -1
)

# ── Example 1: Technology Article ───────────────────
text1 = """
Artificial intelligence is rapidly transforming industries across the globe.
Companies are investing billions of dollars in AI research and development to
automate processes, improve decision making, and enhance customer experiences.
From healthcare to finance, AI-powered tools are helping professionals work
more efficiently and accurately than ever before.
"""
result1 = summarizer(text1, max_length=50, min_length=20, do_sample=False)
print(f"Example 1 Summary:\n{result1[0]['summary_text']}\n")

# ── Example 2: Business News ─────────────────────────
text2 = """
Tesla reported record-breaking quarterly earnings, surpassing analyst expectations
by a significant margin. The electric vehicle giant saw a 35% increase in deliveries
compared to the same period last year. CEO Elon Musk attributed the success to
improved manufacturing efficiency and strong demand in Asian markets, particularly
in China and Japan where EV adoption has been growing rapidly.
"""
result2 = summarizer(text2, max_length=50, min_length=20, do_sample=False)
print(f"Example 2 Summary:\n{result2[0]['summary_text']}\n")

# ── Example 3: Healthcare News ───────────────────────
text3 = """
Researchers at Harvard Medical School have developed a new AI model that can
detect early signs of Alzheimer's disease with 95% accuracy using brain scan images.
The model was trained on over 10,000 patient records and outperformed human doctors
in identifying subtle patterns that indicate early-stage cognitive decline. This
breakthrough could lead to earlier diagnosis and more effective treatment options
for millions of patients worldwide.
"""
result3 = summarizer(text3, max_length=50, min_length=20, do_sample=False)
print(f"Example 3 Summary:\n{result3[0]['summary_text']}\n")