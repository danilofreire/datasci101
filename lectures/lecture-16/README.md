# Lecture 16: Setting up AI: Instructions, Memory and Connectors

This lecture moves from writing a good prompt to configuring an assistant that already knows who you are. Students learn the four layers of context (instructions, knowledge, memory, tools), how many rules a model can actually follow, how the same layers become files in agent tools such as CLAUDE.md, AGENTS.md and SKILL.md, and how connectors and MCP give a model live access to real systems. Finance supplies the worked example, prompt injection through connectors supplies the warning, and every button covered is available on the free plans. The deck ends with a homework slide: a twenty-minute setup students build at home, not in class.

## Main ideas

### 1. From prompts to setups

* **Why one prompt is not enough**: a model has no state between chats, so each one starts from the weights plus whatever is in the context window (Lecture 10). A setup is a standing instruction the tool applies to every chat.
* **The four layers of context**: instructions and knowledge you write; memory and tools that fill up on their own. The idea traces back to Karpathy's "LLM OS" talk (Nov 2023), MemGPT (Packer et al., 2023) and Anthropic's augmented LLM (Dec 2024).
* **Instructions**: Settings > Profile applies to every chat, project instructions to one project, both on all plans including Free. Zheng et al. (2024) tested 162 personas on 2,410 questions and found "You are an expert" improves nothing; Sclar et al. (2024) found up to 76 accuracy points between formats of the same prompt.
* **How many rules a model follows**: SysBench (Qin et al., 2024) puts GPT-4o at 87% of single constraints and 54% session consistency; ComplexBench shows failures grow when constraints combine; "Lost in the middle" (Liu et al., 2024) shows middle-of-context facts are missed; Anthropic's own docs recommend under 200 lines.
* **Memory**: on by default for Free, Pro and Max (Free from 2 March 2026). Park et al. (2023) is the research ancestor. MINJA (Dong et al., 2025) poisoned an agent's memory through ordinary questions with 98% success. Health, finances and other people stay out; incognito chats are not saved, read no memory and are kept 30 days.
* **Projects**: instructions, knowledge files and project memory in one place, five on Free. The uploaded files are the RAG from Lecture 12 (Lewis et al., 2020), with about 10x the file capacity in RAG mode and the same retrieval failure mode.

### 2. Instruction files for agents

* **Claude Code and CLAUDE.md**: launched 24 February 2025; the file is read at the start of every session, arrives as a user message after the system prompt, and has four scopes (managed policy, machine, project, local). `@path` imports and a `.claude/rules/` folder split a long file.
* **A real CLAUDE.md**: role, house style, hard limits, approval points. Chakrabarti (2026) finds these files grew 226% across 1,867 repositories; Galster et al. (2026) find a plain instruction file is usually the only mechanism in 2,853 repositories.
* **AGENTS.md**: released August 2025 by OpenAI Codex with Amp, Google Jules, Cursor and Factory; no schema, read by about two dozen tools, used in more than 60,000 open-source projects, contributed to the Agentic AI Foundation on 9 December 2025. Sun et al. (2026) read 12,110 Cursor rules files and found security almost absent.
* **Skills**: launched 16 October 2025, on the Free plan; a folder with a SKILL.md plus optional scripts, loaded by progressive disclosure; open standard at agentskills.io since 18 December 2025.
* **Diagnosing the layer**: which of the four layers a problem sits in, in a chat app and in an agent tool.
* **Activity**: write ten lines of project instructions for a DATASCI 101 study helper, then compare against two failure modes, too vague and too long.

### 3. Connectors and MCP

* **Where MCP came from**: the analyst's morning is four steps of moving data by hand; fifty apps and five models would be 250 integrations. Code editors solved the same problem in 2016 with Microsoft's Language Server Protocol, which the MCP specification cites as an inspiration. Anthropic released MCP on 25 November 2024.
* **How it works and who adopted it**: host, client and server exposing tools, resources and prompts; the USB-C analogy; OpenAI adopted it on 26 March 2025; donated to the Agentic AI Foundation on 9 December 2025 with over 10,000 servers and 97 million SDK downloads a month.
* **Free-plan connectors**: the directory is open to all users, with one custom remote MCP connector on Free. A connector is Lecture 12's RAG with a live plug. Read access and write access are separate decisions.
* **Two routes in finance**: train a domain model (BloombergGPT, FinGPT's LoRA adapter at about $300 a run, Med-PaLM 2 at 86.5%) or connect a general model to the filings. Li et al. (2023) is the rule of thumb for which route wins on which task; most teams connect.
* **Prompt injection through connectors**: the GitHub MCP leak (Invariant Labs, 26 May 2025), named indirect prompt injection by Greshake et al. (2023), with Perez & Ribeiro (2022) on the direct version. Then the Gemini calendar invite (SafeBreach, August 2025) and the Notion 3.0 exfiltration (19 September 2025), both instances of Lecture 15's trifecta, followed by the three rules: least access, read-only by default, confirm every write.
* **The benchmarks**: AgentDojo (Debenedetti et al., 2024), MCPTox (Wang et al., 2025), 5.5% of 1,899 public servers already poisoned (Hasan et al., 2025), 16 threat types mapped (Hou et al., 2025), and OpenAI's instruction hierarchy (Wallace et al., 2024) on the defence side.

### 4. Beyond Claude

* **The same buttons in ChatGPT**: custom instructions capped at 1,500 characters on Free (5,000 on Plus since 15 July 2026), Projects, lightweight memory since June 2025, GPTs you can use but not build, and custom MCP connectors behind Developer Mode from Plus upwards. Temporary chat is the incognito equivalent.

### Homework

* **Your setup, step by step**: eight steps students do at home on the free plan, from creating the project to writing down one thing the assistant got wrong and which layer caused it, then checking whether three old questions get different answers.

## Resources

* [Lecture slides (HTML)](https://danilofreire.github.io/datasci101/lectures/lecture-16/16-setting-up-ai.html)
* [Lecture source (QMD)](16-setting-up-ai.qmd)
* [Claude Code memory and CLAUDE.md](https://code.claude.com/docs/en/memory)
* [AGENTS.md](https://agents.md/)
* [Agent Skills (Anthropic, 2025)](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills)
* [agentskills.io](https://agentskills.io/)
* [Model Context Protocol (Anthropic, 2024)](https://www.anthropic.com/news/model-context-protocol)
* [MCP specification](https://modelcontextprotocol.io/specification/2026-07-28)
* [Building effective agents (Anthropic, 2024)](https://www.anthropic.com/research/building-effective-agents)
* [Zheng et al. (2024). When "a helpful assistant" is not really helpful](https://aclanthology.org/2024.findings-emnlp.888/)
* [Sclar et al. (2024). Quantifying language model sensitivity to prompt formatting](https://arxiv.org/abs/2310.11324)
* [Qin et al. (2024). SysBench: system message following](https://arxiv.org/abs/2408.10943)
* [Liu et al. (2024). Lost in the middle](https://arxiv.org/abs/2307.03172)
* [Park et al. (2023). Generative agents](https://arxiv.org/abs/2304.03442)
* [Dong et al. (2025). MINJA: memory injection attacks](https://arxiv.org/abs/2503.03704)
* [Lewis et al. (2020). Retrieval-augmented generation](https://arxiv.org/abs/2005.11401)
* [Greshake et al. (2023). Indirect prompt injection](https://arxiv.org/abs/2302.12173)
* [Debenedetti et al. (2024). AgentDojo](https://arxiv.org/abs/2406.13352)
* [Wang et al. (2025). MCPTox](https://arxiv.org/abs/2508.14925)
* [Wallace et al. (2024). The instruction hierarchy](https://arxiv.org/abs/2404.13208)
* [The GitHub MCP vulnerability (Invariant Labs, 2025)](https://invariantlabs.ai/blog/mcp-github-vulnerability)
* [Invitation is all you need (SafeBreach, 2025)](https://www.safebreach.com/blog/invitation-is-all-you-need-hacking-gemini/)
* [Notion 3.0 and the lethal trifecta (Willison, 2025)](https://simonwillison.net/2025/Sep/19/notion-lethal-trifecta/)
