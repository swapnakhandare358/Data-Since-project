from transformers import pipeline
import torch

sentiment_model = pipeline(
    "sentiment-analysis",
    model="distilbert-base-uncased-finetuned-sst-2-english",
    device=0 if torch.cuda.is_available() else -1
)

result = sentiment_model("This movie is amazing")
print(result)
