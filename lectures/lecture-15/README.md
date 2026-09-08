# Lecture 15: AI Agents: When Models Start Doing Things

This lecture covers what changes when a language model stops answering questions and starts taking actions. We define an agent as a model with tools, a loop and a goal, then look at how research, memory and multi-agent teams work in practice. The second half is about failure: errors that compound over long tasks, prompt injection that turns into real actions, and two documented cases where agents caused expensive damage.

## Main Ideas

### 1. From Chatbots to Agents

* **The definition**: a model that uses tools, in a loop, to pursue a goal with limited supervision.
* **The loop**: goal, plan, act, observe, repeat, and the model decides when to stop.
* **Tools**: search, browsers, code execution, files, email, payments. The model asks, software does.

### 2. How Agents Work

* **Research with initiative**: RAG retrieves once, an agent chooses what to search next.
* **Memory**: scratchpads, summaries and sub-tasks work around the context window.
* **Teams**: an orchestrator splits work between workers, and coordination becomes a new failure mode.

### 3. When Agents Go Wrong

* **Compounding errors**: 95% accuracy per step is 36% over a 20-step task.
* **Prompt injection with tools**: the lethal trifecta of private data, untrusted content and a way to send data out.
* **Two case studies**: Replit's deleted production database and Anthropic's Project Vend shop.

### 4. Trust and Delegation

* **The credit card test**: reversibility times stakes decides what you hand over.
* **Guardrails**: permissions, sandboxes, action logs, undo and spending limits.
* **Goals taken literally**: the proxy problem from lecture 03, now with hands.

## Resources

* [Lecture Slides (HTML)](15-agents.html)
* [Lecture Source (QMD)](15-agents.qmd)
* [Anthropic, Building effective agents](https://www.anthropic.com/engineering/building-effective-agents)
* [Anthropic, Project Vend](https://www.anthropic.com/research/project-vend-1)
* [Simon Willison, The lethal trifecta](https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/)
* [Business Insider, Replit CEO apologises](https://www.businessinsider.com/replit-ceo-apologizes-ai-coding-tool-delete-company-database-2025-7)
