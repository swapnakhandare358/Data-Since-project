import torch
from transformers import pipeline

# Explicitly define model name — prevents default model warning
translator = pipeline(
    "translation_en_to_hi",
    model="Helsinki-NLP/opus-mt-en-hi",  # explicitly defined — no warning
    device=0 if torch.cuda.is_available() else -1
)

result = translator("How are you dear?")
print(result)
