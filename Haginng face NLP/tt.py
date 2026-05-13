# translation_en_to_hi.py
# Task: Translate English text to Hindi using Helsinki-NLP model

import torch
from transformers import pipeline

# Explicitly define model name — prevents default model warning
translator = pipeline(
    "translation_en_to_hi",
    model="Helsinki-NLP/opus-mt-en-hi",  # explicitly defined — no warning
    device=0 if torch.cuda.is_available() else -1
)

def translate(text):
    result = translator(text, max_length=200)
    print(f"English : {text}")
    print(f"Hindi   : {result[0]['translation_text']}\n")

if __name__ == "__main__":
    # Example 1: Simple Sentence
    translate("Artificial intelligence is transforming the world.")

    # Example 2: Business Sentence
    translate("Data analytics helps businesses make better decisions.")

    # Example 3: Technology Sentence
    translate("Machine learning models can detect spam messages automatically.")








