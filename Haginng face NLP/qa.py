# question_answering.py
# Task: Extract answers from a given context paragraph using RoBERTa

import torch
from transformers import pipeline

# Explicitly define model name — prevents default model warning
qa_model = pipeline(
    "question-answering",
    model="deepset/roberta-base-squad2",  # explicitly defined — no warning
    device=0 if torch.cuda.is_available() else -1
)

def ask(question, context):
    result = qa_model(question=question, context=context)
    print(f"Question   : {question}")
    print(f"Answer     : {result['answer']}")
    print(f"Confidence : {result['score']:.2%}\n")

if __name__ == "__main__":
    # Example 1: Technology Context
    context1 = """
    Hugging Face is an AI company founded in 2016 that provides open-source NLP tools
    and pretrained models. It is widely used by researchers and developers to build,
    train, and deploy machine learning models. Their platform hosts over 100,000 models.
    """
    ask("When was Hugging Face founded?", context1)

    # Example 2: Science Context
    context2 = """
    The James Webb Space Telescope was launched on December 25, 2021. It is the largest
    and most powerful space telescope ever built, designed to observe the universe in
    infrared light. NASA spent over 10 billion dollars developing the telescope.
    """
    ask("When was the James Webb Space Telescope launched?", context2)

    # Example 3: Business Context
    context3 = """
    Apple Inc. was founded by Steve Jobs, Steve Wozniak, and Ronald Wayne in April 1976.
    The company is headquartered in Cupertino, California. Apple became the first
    publicly traded company to reach a market capitalization of 1 trillion dollars in 2018.
    """
    ask("Who founded Apple Inc.?", context3)