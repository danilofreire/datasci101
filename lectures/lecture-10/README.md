# Lecture 09: Prompt Engineering and Advanced Prompting Techniques

This lecture covers the science and practice of effective prompting for large language models. We examine research-backed techniques that improve AI performance, from basic prompt structure to chain-of-thought reasoning and AI agents.

## Main Ideas

### 1. The Science of Prompting

- **PTCF Framework**: Google's structured approach—Persona, Task, Context, Format—for crafting effective prompts.
- **Token-Level Understanding**: LLMs predict the next token based on statistical patterns. Your prompt sets the context for what patterns get activated.
- **Explicit Constraints**: Vague prompts get vague answers. Specifying edge cases and output formats prevents ambiguity.

### 2. Fundamental Techniques

- **Zero-shot, One-shot, Few-shot**: Providing examples helps LLMs recognise subtle patterns and edge cases.
- **Example Quality**: Representative examples of hard cases teach decision boundaries better than easy examples.
- **Structured Output**: JSON, Markdown, and other formats make outputs parseable and consistent.

### 3. Chain-of-Thought Reasoning

- **Wei et al. (2022)**: Adding "Let's think step by step" improved maths accuracy from 17.7% to 58.1% on GSM8K.
- **Why It Works**: Generating intermediate steps externalises reasoning, allowing the model to check its work.
- **Self-Consistency**: Running multiple reasoning paths and taking the majority answer increases reliability.
- **When to Skip**: CoT can hurt simple tasks where intuition outperforms analysis.

### 4. System Prompts and Personas

- **Hidden Instructions**: Every commercial AI has a system prompt defining identity, capabilities, and constraints.
- **Persona Effects**: Different personas emphasise different information and make different assumptions.
- **Meta-Prompting**: Asking the AI to help improve your prompts leverages its implicit knowledge of what works.

### 5. AI Agents and Tool Use

- **ReAct Pattern**: Alternate between Thought (reasoning), Action (tool use), and Observation (results).
- **Agent Safety**: Agents can make compounding errors and are vulnerable to prompt injection.
- **Human in the Loop**: High-stakes decisions still need human oversight.

## Resources

- [Lecture Slides (HTML)](09-prompting-new.html)
- [Lecture Source (QMD)](09-prompting-new.qmd)
- [Wei et al. (2022) Chain-of-Thought Paper](https://arxiv.org/abs/2201.11903)
- [Prompting Guide](https://www.promptingguide.ai/)
- [Google Gemini Prompting Guide (PDF)](https://services.google.com/fh/files/misc/gemini-for-google-workspace-prompting-guide-101.pdf)
