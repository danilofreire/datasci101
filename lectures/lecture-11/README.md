# Lecture 11: Creativity and Hallucination

This lecture explores one of the most important problems in AI: when LLMs confidently state false information. Students learn why hallucinations happen, how they relate to creativity, and how to detect and mitigate them.

## Main Ideas

### 1. What Are Hallucinations?

* **Definition**: When AI generates plausible but factually incorrect content with high confidence
* **Types**: Factual, fabrication, citation, logical, temporal, entity hallucinations
* **Why they happen**: LLMs predict plausibility, not truth; they have no fact-checking mechanism
* **Sycophancy**: Models drop correct answers to agree with you; GPT-5's stated beliefs on moral and safety topics shifted 55% after 10 rounds of debate (Geng et al., 2025)

### 2. Creativity vs. Accuracy

* **The tradeoff**: The same mechanism that enables creativity also causes hallucinations
* **Right time, wrong time**: Making things up helps in fiction and brainstorming; it is a problem only when you need facts
* **When hallucinations are useful**: Creative writing, brainstorming, role-playing
* **Activity**: Ask Qwen five questions with a 1-10 confidence rating, then verify each answer

### 3. Real-World Failures

* **Legal**: Lawyer submitted fake ChatGPT citations (Mata v. Avianca)
* **Medical**: Wrong drug dosages and fabricated interactions
* **Academic**: Invented citations and fake papers

### 4. Detection and Prevention

* **Red flags**: Very specific numbers, precise citations, confident tone
* **Prompting techniques**: Ask for uncertainty, request sources, use chain-of-thought
* **Preview**: RAG as a solution (next lecture)

## Resources

* [Lecture Slides (HTML)](https://danilofreire.github.io/datasci101/lectures/lecture-11/11-hallucination.html)
* [Lecture Source (QMD)](11-hallucination.qmd)
* [Survey on LLM Hallucination](https://arxiv.org/abs/2402.06647)
* [Wikipedia: AI Hallucination](https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence))
