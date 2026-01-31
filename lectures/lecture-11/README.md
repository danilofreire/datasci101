# Lecture 10: RAG, Semantic Search, and Grounding AI

This lecture explains Retrieval-Augmented Generation (RAG) in accessible terms for non-technical undergraduates. Students learn why LLMs hallucinate, how semantic search works, and try no-code RAG tools hands-on.

## Main Ideas

### 1. The Problem RAG Solves

* **Knowledge cutoff**: LLMs only know what was in their training data—nothing recent or private.
* **Hallucinations**: AI confidently states false information because it predicts plausible text, not verified facts.
* **The solution**: Give AI access to your documents at query time.

### 2. Semantic Search

* **Keyword search**: Finds exact word matches only.
* **Semantic search**: Finds documents by meaning using embeddings.
* **Why it matters**: "cheap flights" can find "budget airfare"—same meaning, different words.

### 3. The RAG Pipeline

* **Chunk**: Break documents into smaller pieces.
* **Embed**: Convert chunks to vectors.
* **Store**: Save in a vector database.
* **Retrieve**: Find chunks similar to the user's question.
* **Generate**: LLM answers using retrieved context.

### 4. No-Code RAG Tools

* **NotebookLM**: Google's free AI research assistant.
* **ChatPDF**: Chat with any PDF.
* **Perplexity**: Web search with citations.

### 5. When RAG Fails

* **Wrong chunks retrieved**: Question uses different words than document.
* **Outdated documents**: RAG is only as good as your data.
* **Always verify**: Check citations and original sources.

## Resources

* [Lecture Slides (HTML)](10-rag.html)
* [Lecture Source (QMD)](10-rag.qmd)
* [NotebookLM](https://notebooklm.google.com/)
* [ChatPDF](https://www.chatpdf.com/)
* [Perplexity](https://perplexity.ai/)
