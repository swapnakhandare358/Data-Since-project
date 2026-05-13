# text_generation.py
# Task: Generate continuation text from a given prompt using GPT-2

import torch
from transformers import pipeline

# Load GPT-2 Medium model for text generation
# GPT-2 predicts and generates next words based on input prompt
generator = pipeline(
    "text-generation",
    model="gpt2-medium",
    device=0 if torch.cuda.is_available() else -1
)

# ── Example 1: Business Topic ────────────────────────
result1 = generator(
    "Data analytics helps businesses by",
    max_length=60,       # maximum tokens to generate
    do_sample=True,      # enable random sampling for creative output
    temperature=0.7,     # lower = focused output, higher = creative output
    top_p=0.9            # nucleus sampling for better quality
)
print(f"Example 1:\n{result1[0]['generated_text']}\n")

# ── Example 2: Technology Topic ─────────────────────
result2 = generator(
    "Artificial intelligence is transforming the world by",
    max_length=60,
    do_sample=True,
    temperature=0.7,
    top_p=0.9
)
print(f"Example 2:\n{result2[0]['generated_text']}\n")

# ── Example 3: Story Generation ─────────────────────
result3 = generator(
    "Once upon a time in a small village, a young scientist discovered",
    max_length=80,
    do_sample=True,
    temperature=0.9,     # higher temperature for more creative story
    top_p=0.95
)
print(f"Example 3:\n{result3[0]['generated_text']}\n")