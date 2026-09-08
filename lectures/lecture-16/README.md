# Lecture 16: Setting up AI: Instructions, Memory and Connectors

This lecture moves from writing a good prompt to configuring an assistant that already knows who you are. Students learn the four layers of context (instructions, knowledge, memory, tools), how the same layers appear as files in agent tools such as CLAUDE.md and AGENTS.md, how connectors and MCP give a model live access to real systems, and what can go wrong when a connected tool brings in text written by someone else. Finance supplies the worked example, and every button covered is available on the free plans.

## Main ideas

### 1. From prompts to setups

* **Prompt versus setup**: a prompt is a request typed once; a setup is a standing instruction that survives the tab closing.
* **The four layers of context**: instructions you write, knowledge files you attach, memory that accumulates on its own, and tools the model can call.
* **Instructions**: Settings > Profile applies to every chat, project instructions to one project; both are on all Claude plans, including Free. A good instruction names five things: role, audience, format, refusals, and the question it should ask first.
* **Memory**: on by default for Free, Pro and Max; it stores preferences, facts you mention in passing and ongoing projects. Read, edit and delete it in Settings > Memory, with import, export and incognito chats. Health, finances and other people's data should never sit in it.
* **Projects**: instructions, knowledge files and project memory in one place, up to five on the Free plan; the uploaded files are the RAG idea from Lecture 12. Three student uses: a study helper for this course, a job-application project with your CV, and a thesis or group-project workspace.

### 2. Instruction files for agents

* **CLAUDE.md**: the instruction file Claude Code reads at the start of every session, with personal, project and local scopes; `@path` imports pull in another file and a `.claude/rules/` folder splits a long file into topics.
* **What goes in it**: role, house style, a "never" list, and the points where the agent must stop and ask.
* **AGENTS.md**: an open format released by OpenAI in August 2025, read by Codex, Cursor, Devin, Gemini CLI and Copilot, used in 60,000+ repositories and contributed to the Agentic AI Foundation in December 2025. Skills (a SKILL.md folder, launched 16 October 2025, on the Free plan) are the same idea for one repeatable task.
* **Diagnosing the layer**: which of the four layers is the problem in, in a chat app and in an agent tool.
* **Activity**: write ten lines of project instructions for a DATASCI 101 study helper, then compare against two failure modes, too vague and too long.

### 3. Connectors and MCP

* **From copy-paste to MCP**: an analyst's morning is four steps of moving data by hand; uploading a file is a photograph, a connector is a window. Fifty apps and five models would be 250 integrations, so MCP gives every app one shared plug. Launched by Anthropic on 25 November 2024, adopted by OpenAI on 26 March 2025, donated to the Agentic AI Foundation on 9 December 2025, with 10,000+ public servers and 97 million SDK downloads a month.
* **Free-plan connectors**: Google Drive, Gmail, Calendar, Slack, Notion and GitHub from the directory, plus one custom remote MCP connector. A connector is the RAG from Lecture 12 with a live plug, and it inherits the same failure modes. Read access and write access are separate decisions.
* **Two routes in finance**: train a domain model (BloombergGPT on 708 billion tokens, FinGPT's LoRA adapter under $300 a run, Med-PaLM 2 at 86.5% on US licensing exam questions) or connect a general model to your data; most teams connect. Li et al. (2023) is the rule of thumb for which route wins on which task.
* **Prompt injection through connectors**: the GitHub MCP leak (Invariant Labs, May 2025), then the lethal trifecta slide with the Gemini calendar-invite attack (SafeBreach, August 2025) and the Notion hidden-PDF exfiltration (19 September 2025), all instances of the trifecta from Lecture 15. The same slide closes with the three rules: least access, read-only by default, confirm every write.

### 4. Do it yourself

* **A twenty-minute setup in Claude**: eight steps students can follow tonight, from creating the project to writing down one thing the assistant got wrong and which layer caused it.
* **The same buttons in ChatGPT**: custom instructions capped at 1,500 characters on Free, lightweight memory, Projects, GPTs you can use but not create, and MCP connectors from Plus upwards.

## Resources

* [Lecture slides (HTML)](16-setting-up-ai.html)
* [Lecture source (QMD)](16-setting-up-ai.qmd)
* [Claude Code memory and CLAUDE.md](https://code.claude.com/docs/en/memory)
* [AGENTS.md](https://agents.md/)
* [Agent Skills](https://claude.com/blog/skills)
* [Model Context Protocol (Anthropic, 2024)](https://www.anthropic.com/news/model-context-protocol)
* [The GitHub MCP vulnerability (Invariant Labs, 2025)](https://invariantlabs.ai/blog/mcp-github-vulnerability)
* [The lethal trifecta (Willison, 2025)](https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/)
