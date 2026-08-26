# Lecture 14: When AI Systems Fail: Pipelines, Monitoring, and Documentation

This lecture shows non-technical undergraduates what happens behind the scenes when they use AI, why systems break, and how companies try to catch failures before users do. It combines the pipeline and monitoring material with documentation (datasheets, model cards, and system cards) as the accountability layer.

## Main ideas

### 1. What is a pipeline?

* **From prompt to response**: load balancers, tokenisation, the model, safety filters. Every step can fail independently.
* **Real failures**: Air Canada's invented refund policy, DPD's sweary chatbot, Google Gemini's image crisis, the $1 Chevy Tahoe.

### 2. Why pipelines break

* **Data drift**: the world changes faster than training data (slang, prices, demographics).
* **Model degradation**: models get stale even without drift; the "boiling frog" problem.
* **Infrastructure**: GPUs, networks, and scaling issues behind "I'm at capacity".

### 3. Monitoring and testing

* **Key metrics**: latency, error rates, hallucination rates, user satisfaction.
* **Why testing AI is hard**: non-deterministic outputs; test properties, not exact answers.
* **Input and output validation**: block prompt injection on the way in, catch harmful or invented content on the way out.

### 4. Documentation and accountability

* **The ImageNet horror story**: what happens when nobody documents the data.
* **Datasheets** (Gebru et al., 2018), **model cards** (Mitchell et al., 2019), and **system cards**: what each covers and why intended use is the most important section.
* **Disaggregated evaluation**: overall accuracy hides subgroup gaps (OpenAI's CLIP model card).
* **Consent and the data supply chain**: LAION-5B, Clearview AI, and the "who owns the data?" debate.
* **Activity**: read Anthropic's HH-RLHF dataset card on Hugging Face.

## Resources

* [Lecture Slides (HTML)](14-pipelines.html)
* [Lecture Source (QMD)](14-pipelines.qmd)
* [Datasheets for Datasets (Gebru et al., 2018)](https://arxiv.org/abs/1803.09010)
* [Model Cards for Model Reporting (Mitchell et al., 2019)](https://arxiv.org/abs/1810.03993)
* [AI Incident Database](https://incidentdatabase.ai/)
