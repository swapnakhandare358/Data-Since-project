# sa.py
import torch
from transformers import pipeline

# Explicitly model name do — warning band ho jayegi

sentiment_model = pipeline(
    "sentiment-analysis",
    model="distilbert-base-uncased-finetuned-sst-2-english",  # ← ye add karo
    device=0 if torch.cuda.is_available() else -1
)

if __name__ == "__main__":
    result1 = sentiment_model("I absolutely love this product!")
    print(f"Example 1 → Label: {result1[0]['label']}, Score: {result1[0]['score']:.2%}")

    result2 = sentiment_model("This is the worst experience I have ever had.")
    print(f"Example 2 → Label: {result2[0]['label']}, Score: {result2[0]['score']:.2%}")

    result3 = sentiment_model("The food was great but the service was very slow.")
    print(f"Example 3 → Label: {result3[0]['label']}, Score: {result3[0]['score']:.2%}")