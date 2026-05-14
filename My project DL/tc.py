import torch
from transformers import pipeline

# Explicitly define model name — prevents default model warning
spam_model = pipeline(
    "text-classification",
    model="mrm8488/bert-tiny-finetuned-sms-spam-detection",  # explicitly defined — no warning
    device=0 if torch.cuda.is_available() else -1
)

result = spam_model("This is a spam message")
print(result)