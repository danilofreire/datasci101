# Lecture 10: Creativity and Hallucination

This lecture explores one of the most important problems in AI: when LLMs confidently state false information. Students learn why hallucinations happen, how they relate to creativity, and how to detect and mitigate them.

## Main Ideas

### 1. What Are Hallucinations?

* **Definition**: When AI generates plausible but factually incorrect content with high confidence
* **Types**: Factual, fabrication, citation, logical, temporal, entity hallucinations
* **Why they happen**: LLMs predict plausibility, not truth—they have no fact-checking mechanism

### 2. Creativity vs. Accuracy

* **The tradeoff**: The same mechanism that enables creativity also causes hallucinations
* **Temperature**: Controls randomness (low = precise, high = creative)
* **When hallucinations are useful**: Creative writing, brainstorming, role-playing

### 3. Real-World Failures

* **Legal**: Lawyer submitted fake ChatGPT citations (Mata v. Avianca)
* **Medical**: Wrong drug dosages and fabricated interactions
* **Academic**: Invented citations and fake papers

### 4. Detection and Prevention

* **Red flags**: Very specific numbers, precise citations, confident tone
* **Prompting techniques**: Ask for uncertainty, request sources, use chain-of-thought
* **Preview**: RAG as a solution (next lecture)

## Resources

* [Lecture Slides (HTML)](10-hallucination.html)
* [Lecture Source (QMD)](10-hallucination.qmd)
* [Survey on LLM Hallucination](https://arxiv.org/abs/2402.06647)
* [Wikipedia: AI Hallucination](https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence))
