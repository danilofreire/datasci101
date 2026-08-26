# Lecture 17: AI in Finance and Healthcare

This lecture examines how AI is used in two high-stakes domains: healthcare and finance. We compare traditional machine learning with what LLMs add in each field, and we ask what happens when bias creeps into systems that decide who gets care and who gets credit.

## Main ideas

### 1. AI in healthcare

* **Traditional ML**: Risk scores and medical imaging models that predict a single outcome from structured data.
* **What LLMs add**: Reading clinical notes, summarising records, and drafting patient communication.
* **Discussion**: Would you trust an AI doctor?

### 2. AI in finance

* **Traditional ML**: Credit scoring, fraud detection, and algorithmic trading built on structured data.
* **What LLMs add**: Finance-specific models, sentiment analysis for trading, and agentic workflows.
* **When to use which**: Traditional ML for structured prediction; LLMs for unstructured text and language tasks.

### 3. RAG in healthcare and finance

* **Grounding**: Retrieval-augmented generation lets models draw on clinical guidelines and financial filings instead of memory alone.
* **Risks**: Retrieval failures are costly when the answer informs a diagnosis or a trade.

### 4. When bias creeps in

* **The Optum case**: Using healthcare costs as a proxy for healthcare needs understated how sick Black patients were; predicting health outcomes instead reduced the bias by around 80%.
* **Credit scoring**: Historical lending data encodes past discrimination and shapes who gets access to credit.
* **Common patterns**: Proxy problems and historical bias appear in both domains; disaggregated analysis is essential.

## Resources

* [Lecture slides (HTML)](17-case-studies.html)
* [Lecture source (QMD)](17-case-studies.qmd)
* [Obermeyer et al. (2019) – Dissecting racial bias in healthcare algorithms](https://www.science.org/doi/10.1126/science.aax2342)
* [Li et al. (2023) – Large language models in finance: a survey](https://arxiv.org/abs/2311.10723)
