# spam_detection.py
# Task: Classify SMS messages as SPAM or HAM (legitimate)

import torch
from transformers import pipeline

# Explicitly define model name — prevents default model warning
spam_model = pipeline(
    "text-classification",
    model="mrm8488/bert-tiny-finetuned-sms-spam-detection",  # explicitly defined — no warning
    device=0 if torch.cuda.is_available() else -1
)

def check_spam(text):
    result = spam_model(text)[0]
    label = "SPAM 🚨" if result['label'] == 'LABEL_1' else "HAM ✅"
    print(f"[{label}] [{result['score']:.2%}] {text}")

if __name__ == "__main__":
    # Example 1: Clear Spam
    check_spam("Congratulations! You won a $1000 gift card. Click here to claim now!")

    # Example 2: Legitimate Message
    check_spam("Hey, are we still meeting for lunch tomorrow at 1pm?")

    # Example 3: Spam with urgency
    check_spam("FREE entry! Text WIN to 12345 and claim your guaranteed prize worth £2000!")