# Lecture 15: AI Agents: When Models Start Doing Things

This lecture introduces AI agents to non-technical undergraduates: what changes when a model can use tools and act in the world, rather than just answer questions. Students learn the agent loop, where agents fail, and how to decide what to delegate.

## Main ideas

### 1. From chatbots to agents

* **The definition**: an agent = a language model + tools + a loop + a goal, with limited supervision.
* **The agent loop**: goal → plan → act → observe → repeat → stop.
* **Tools**: web search, browsing, code execution, files, email, payments. Every tool is a capability and an attack surface.
* **Products students already use**: Deep Research, coding agents, computer use, customer service and booking agents.

### 2. How agents work

* **Retrieval is just another tool**: agentic research as RAG with initiative.
* **Memory**: scratchpads, summaries, and sub-tasks; why long tasks degrade.
* **Multi-agent systems**: orchestrators and workers, and the coordination risks they add.

### 3. When agents go wrong

* **The multiplication of mistakes**: 95% per-step accuracy is ~36% over 20 steps.
* **Prompt injection with tools**: Simon Willison's "lethal trifecta" (private data + untrusted content + external communication).
* **Case studies**: Replit's agent deleting a production database (2025); Anthropic's Project Vend (Claudius runs a shop).
* **Automation bias**: approval fatigue and over-delegation.

### 4. Trust and delegation

* **The credit card test**: reversibility × stakes decides what to delegate.
* **Guardrails**: permissions, sandboxes, action logs, undo, spending limits.
* **Preview of Lecture 25**: goals taken literally; the proxy problem with hands.
* **Activity**: audit a flawed agent action log and find the failures.

## Resources

* [Lecture Slides (HTML)](15-agents.html)
* [Lecture Source (QMD)](15-agents.qmd)
* [Building Effective Agents (Anthropic, 2024)](https://www.anthropic.com/research/building-effective-agents)
* [The Lethal Trifecta (Willison, 2025)](https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/)
* [Project Vend (Anthropic, 2025)](https://www.anthropic.com/research/project-vend-1)
