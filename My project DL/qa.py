from transformers import pipeline

qa = pipeline("question-answering")

result = qa(
    question="What is AI?",
    context="AI means Artificial Intelligence."
)

print(result)