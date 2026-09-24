# Lecture 14: When AI Systems Fail: Pipelines, Monitoring, and Documentation

This lecture shows non-technical undergraduates what happens behind the scenes when they use AI, why systems break, and how companies try to catch failures before users do. It combines the pipeline and monitoring material with documentation (datasheets and model cards, with a line on system cards) as the accountability layer.

## Main ideas

### 1. What is a pipeline?

* **From prompt to response**: load balancers, tokenisation, the model, safety filters. Every step can fail independently.
* **Real failures**: Air Canada's invented refund policy, DPD's sweary chatbot, Google Gemini's image crisis, the $1 Chevy Tahoe.

### 2. Why pipelines break

* **Data drift**: inputs, answer rates or meanings shift (data, label and concept drift); concept drift is the most dangerous.
* **Model degradation**: models get stale even without drift; the "boiling frog" problem.
* **Failure types**: hallucination, policy, drift or pipeline; each needs a different response.

### 3. Monitoring and testing

* **Key metrics**: latency, error rates, hallucination rates, user satisfaction.
* **Why testing AI is hard**: non-deterministic outputs; test properties, not exact answers.
* **Input and output validation**: block prompt injection on the way in, catch harmful or invented content on the way out.

### 4. Documentation and accountability

* **Why document**: few checked ImageNet's scraped, non-consensual images, yet thousands of AI systems were built on it.
* **Datasheets** (Gebru et al., 2018) and **model cards** (Mitchell et al., 2019), plus **system cards** for whole products: what each covers and why intended use matters most.
* **Disaggregated evaluation**: overall accuracy hides subgroup gaps (OpenAI's CLIP model card).
* **Consent and the data supply chain**: LAION-5B, Clearview AI, and the "who owns the data?" debate.
* **Activity**: read Anthropic's HH-RLHF dataset card on Hugging Face.

### 5. What you can do

* **Being a savvy AI user**: compare models, check status pages, read model cards, and diagnose five failures in the activity.

## Resources

* [Lecture Slides (HTML)](https://danilofreire.github.io/datasci101/lectures/lecture-14/14-pipelines.html)
* [Lecture Source (QMD)](14-pipelines.qmd)
* [Datasheets for Datasets (Gebru et al., 2018)](https://arxiv.org/abs/1803.09010)
* [Model Cards for Model Reporting (Mitchell et al., 2019)](https://arxiv.org/abs/1810.03993)
* [AI Incident Database](https://incidentdatabase.ai/)
