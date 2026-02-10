---
description: How to create assignments for DATASCI 185
---

# Agent Instructions: Creating Assignments for DATASCI 185

This document contains all the context and instructions needed to create assignments for DATASCI 185: Introduction to AI Applications.

---

## Course Context

- **Course**: DATASCI 185 - Introduction to AI Applications
- **Institution**: Emory University, Department of Data and Decision Sciences
- **Audience**: Non-technical undergraduate students
- **Instructor**: Danilo Freire

---

## Assignment Specifications

### Structure

Each assignment should include:

- **5 main questions** based on the lecture content
- **1 bonus question** (more exploratory or challenging)

### Language

- **British English** throughout
- Examples: colour, tokenisation, organisation, recognise, behaviour, centre
- However, use **USD ($)** for currency examples, not GBP (£)

### Content Style

- **Accessible** to non-technical undergraduates
- **Hands-on experimentation** with LLMs
- Questions should require students to **interact with AI tools** and reflect on the results
- Include **specific prompts or examples** in questions (don't make students guess)
- Avoid overly abstract or theoretical questions

---

## YAML Header Template

```yaml
---
title: "Assignment XX: [Topic]"
subtitle: "DATASCI 185: Introduction to AI Applications"
author: "Emory University"
format:
  docx:
    toc: false
    number-sections: false
---
```

---

## Standard Instructions Block

Include this at the top of every assignment:

```markdown
## Instructions

This assignment covers material from **Lecture XX**: [Topic].

**Guidelines:**

- You are **encouraged** to use ChatGPT, Claude, Gemini, or other LLMs to help you explore these questions
- However, you must **write your answers in your own words** and demonstrate genuine understanding
- Please **disclose which AI tool you used** (if any)
- Your answers should be thoughtful and show critical thinking, not just copy-pasted LLM outputs
- **Please include screenshots** of your interactions with AI tools
- However, **reflection questions must be written in text**, not just screenshots
- Submit this assignment as a **PDF** (preferred) or Word document via Canvas

---
```

---

## Question Format

Each question should follow this structure:

```markdown
### Question X: [Descriptive Title]

[Brief context or setup, if needed]

**Your task:**

1. [Specific instruction]
2. [Specific instruction]
3. [Specific instruction]

**Analysis:**
- [Reflection question]
- [Reflection question]

---

*Your answer:*

\

\

\

---
```

### Key Formatting Elements

| Element | When to Use |
|---------|-------------|
| **Bold** | Key terms, emphasis on important words |
| *Italics* | Prompts students should copy verbatim |
| `Code blocks` | Example prompts, code snippets, JSON |
| > Blockquotes | Quoted prompts or scenarios |
| Numbered lists | Step-by-step instructions |
| Bullet lists | Analysis questions, options |

---

## Question Design Guidelines

### Good Questions Should

1. **Be specific** — provide example prompts, data, or scenarios
2. **Require interaction** — students must actually use an LLM
3. **Include analysis** — ask students to reflect on what they observed
4. **Build skills** — teach a technique or concept through doing
5. **Be testable** — students can verify their results

### Question Difficulty Levels

| Level | Description | Example |
|-------|-------------|---------|
| **Basic** | Follow instructions, observe results | "Ask X, document Y" |
| **Intermediate** | Compare approaches, explain differences | "Test with/without CoT, analyse" |
| **Advanced** | Design prompts, diagnose problems, red-team | "Create a system prompt that..." |

Aim for a mix across the assignment.

---

## Critical: Check Previous Assignments

**Before designing questions:**

1. Open all previous assignment files (`01-assignment.qmd`, `02-assignment.qmd`, etc.)
2. Review the questions to identify what has already been covered
3. **Avoid overlap** — don't repeat similar questions or techniques

**Common overlaps to avoid:**

| Topic | Previously Covered In |
|-------|-----------------------|
| Few-shot classification basics | Assignment 03 Q3 |
| PTCF prompt debugging | Assignment 03 Q4 |
| Meta-prompting for summarisation | Assignment 03 Q5 |
| Token cost calculations | Assignment 03 Q1 |
| Context window maths | Assignment 03 Q2 |
| Temperature experiments | Assignment 02 Q3 |
| Confusion matrix/metrics | Assignment 02 Q2 |

If a topic was covered before, either:

- **Skip it** and choose a different topic
- **Go deeper** with a significantly different angle (e.g., if few-shot was done, do few-shot overfitting)

---

## File Outputs

Each assignment requires THREE files in the **public** `datasci185/assignments/` folder:

1. **Quarto file** (`XX-assignment.qmd`) — source file
2. **Jupyter notebook** (`XX-assignment.ipynb`) — for students who prefer notebooks
3. **Word document** (`XX-assignment.docx`) — generated from Quarto

### Generating the Word Document

```bash
cd assignments
quarto render XX-assignment.qmd --to docx
```

---

## Answer Keys (PRIVATE)

**CRITICAL**: Answer keys must NEVER be saved to the public `datasci185` repository.

### Answer Key Location

Save all answer keys to:

```
/Users/dafreir/Documents/github/emory-answerkeys/datasci185/
```

### Answer Key File Structure

For each assignment, create:

1. **Answer key** (`XX-assignment-answers.md`) — detailed answers for TAs
2. **Copy of assignment files** — for TA reference

### Answer Key Format

```markdown
# Assignment XX: [Topic] — Answer Key

**For TA use only. Do not distribute to students.**

---

## Question 1: [Title]

### Expected Approach
[How students should approach this question]

### Key Points to Look For
- [Point 1]
- [Point 2]
- [Point 3]

### Example Good Answer
[A model answer or key elements that should be present]

### Common Mistakes
- [Mistake 1 and why it's wrong]
- [Mistake 2 and why it's wrong]

### Grading Notes
[Any specific grading guidance]

---

[Repeat for each question]
```

### Answer Key Checklist

- [ ] Answer key saved to `emory-answerkeys/datasci185/` (NOT public repo)
- [ ] All assignment files copied to answer key folder
- [ ] Verify NO answer key files exist in `datasci185/assignments/`
- [ ] Grading rubric included for each question

### Jupyter Notebook Structure

The notebook should have the same content as the Quarto file, structured as:

- Title cell (markdown)
- Instructions cell (markdown)
- One cell per question (markdown)
- Answer cell after each question (markdown, empty)

---

## Assignment Creation Checklist

- [ ] Review the relevant lecture(s) thoroughly
- [ ] Check ALL previous assignments for overlap
- [ ] Design 5 main questions + 1 bonus
- [ ] Include specific prompts/examples in questions
- [ ] Use British English (but USD for money)
- [ ] Create `.qmd` file with proper YAML header
- [ ] Create `.ipynb` file with same content
- [ ] Render `.docx` with `quarto render`
- [ ] Verify all three files exist

---

## Lecture-to-Assignment Mapping

| Lecture | Suggested Assignment Topics |
|---------|-----------------------------|
| 01-03 | AI fundamentals, hallucinations, ELIZA, data quality |
| 04-07 | ML paradigms, metrics, tokenisation, embeddings, multimodal |
| 08 | LLM APIs, structured outputs |
| 09 | Prompting techniques: PTCF, few-shot, CoT, personas, agents |
| 10+ | TBD |

---

## Humanizer Guidelines (from formatting.md)

When writing assignment text, avoid AI-sounding patterns:

### Avoid

- Overused words: "crucial", "delve", "enhance", "landscape", "pivotal"
- Filler phrases: "It is important to note that...", "In order to..."
- Rule of three: Don't force ideas into groups of three
- Sycophantic language: "Great question!", "Excellent point!"
- Em dash overuse
- Promotional language: "vibrant", "groundbreaking", "stunning"

### Prefer

- Simple, direct language
- Specific examples over vague claims
- Natural sentence variation
- First person when appropriate ("you should", "you'll notice")

---

## Example: Well-Designed Question

```markdown
### Question 3: Surface Pattern Overfitting

Few-shot prompting can backfire when the model learns the wrong pattern from your examples.

**The setup:** Here's a sentiment classifier where ALL negative examples contain the word "terrible":

\`\`\`
"The food was terrible and cold" → Negative
"Terrible service, waited 45 minutes" → Negative  
"Best meal I've had in years!" → Positive
"Loved every bite, will return" → Positive
\`\`\`

**Your task:**

1. Test this classifier on: *"The terrible weather didn't stop us from having an amazing time!"*
   - What label did the model predict?

2. **Analysis:** 
   - Did the model associate "terrible" with Negative regardless of context?
   - How would you redesign the examples to fix this?
```

**Why this works:**

- Provides the exact prompt students should use
- Includes specific test cases
- Asks for both observation AND analysis
- Teaches an important concept (overfitting) through doing

---

## Reference: Previous Assignment Questions

### Assignment 01 (Lectures 01-03)

1. AI Definition Challenge (3 explanations)
2. Hallucination Hunt (getting LLM to make things up)
3. ELIZA Experiment (comparing old vs new AI)
4. Transformer Explainer Activity (interactive tool)
5. Garbage In, Garbage Out Demonstration
6. Bonus: Personal AI Use Policy

### Assignment 02 (Lectures 04-07)

1. Learning Paradigm Sorter (supervised/unsupervised/RL)
2. Confusion Matrix Builder
3. Temperature Experiment
4. Multimodal Unified Embedding
5. AI Ethics Panel (watermarks debate)
6. Bonus: Tokenisation Cost Analysis

### Assignment 03 (Lectures 06-08)

1. Token Cost Disparity (English vs Chinese)
2. Context Window Math
3. Few-Shot Classification
4. Debugging Bad Prompts (PTCF)
5. Meta-Prompting (paper summarisation)
6. Bonus: AI Content Watermarking

### Assignment 04 (Lecture 09)

1. Adversarial Persona Testing (PTCF framework)
2. Socratic Tutor via Meta-Prompting
3. Surface Pattern Overfitting (few-shot failure)
4. Chain-of-Thought for Ethical Reasoning
5. Meta-Prompting Cascade (iterative improvement)
6. Bonus: Red Team a Finance Chatbot

---

*Use this document as reference when creating future assignments.*
