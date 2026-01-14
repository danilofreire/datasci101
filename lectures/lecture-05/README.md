# Lecture 05: Metrics, Validation and Overfitting

This lecture explains how we measure if an AI model is actually working. We discuss traditional metrics for simple models and the new challenges of evaluating large language models.

## Main Ideas

### 1. Traditional Metrics

* **The Accuracy Paradox**: Why a 99% accurate model can still be useless if it misses rare but important cases.
* **Precision and Recall**: Balancing the cost of false alarms versus the cost of missing a target.
* **Confusion Matrix**: A fundamental table used to track every type of error a model makes.

### 2. Evaluating Language Models (LLMs)

* **New Challenges**: Why counting word overlaps isn't enough to judge if a model is helpful or true.
* **Perplexity**: A metric that measures how well a model predicts the next word in a sentence.
* **LLM-as-a-Judge**: Using powerful models to grade the quality and safety of other AI responses.

### 3. Hallucinations and RAG

* **Making Things Up**: The risks of AI generating fluent but false information in legal or medical settings.
* **Retrieval-Augmented Generation (RAG)**: Reducing errors by forcing the model to look up real documents before answering.

### 4. Red Teaming

* **Adversarial Testing**: Deliberately trying to trick or "jailbreak" an AI to find its weaknesses before users do.
* **Safety First**: Proactively identifying bias and harmful outputs to make models more robust.

## Resources

* [Lecture Slides (HTML)](05-metrics.html)
* [Lecture Source (QMD)](05-metrics.qmd)
