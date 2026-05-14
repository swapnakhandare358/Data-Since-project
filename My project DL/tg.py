pip
import torch
from transformers import pipeline

# Explicitly define model name — prevents default model warning
generator = pipeline(
    "text-generation",
    model="gpt2-medium",  # explicitly defined — no warning
    device=0 if torch.cuda.is_available() else -1
)

result = generator("artificial intelligence is")
print(result)
