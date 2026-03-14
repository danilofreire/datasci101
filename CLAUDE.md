# DATASCI 185: Introduction to AI Applications

## Course context

Undergraduate 100-level course at Emory University. Students are non-technical; all content must be accessible and jargon-free. The course covers AI fundamentals, LLM internals, prompt engineering, ethics, bias, policy, and governance across 6 modules.

Class schedule: Mondays and Wednesdays, 4pm-4:50pm, Psychology Building Room 290.

## Build and preview commands

```bash
quarto preview                                    # preview site locally
quarto render lectures/lecture-XX/XX-topic.qmd    # render a specific lecture
quarto render syllabus.qmd --to pdf               # render syllabus to PDF
quarto render assignments/XX-assignment.qmd --to docx  # render assignment to Word
```

## Repository structure

```
datasci185/
├── lectures/lecture-XX/         # Each lecture: .qmd, .html, figures/, _extensions/
├── assignments/                 # .qmd, .ipynb, .docx per assignment
├── quiz/                        # 5 quiz files (.qmd, .pdf)
├── syllabus.qmd / syllabus.pdf
├── AGENTS.md                    # Repository workflow guide (gitignored)
├── assignments-agents.md        # Assignment creation instructions (gitignored)
├── humaniser-skill.md           # Humaniser guide (gitignored)
└── CLAUDE.md                    # This file (gitignored)
```

## Instruction files

- **AGENTS.md**: Repository setup, Quarto conventions, file naming, git workflow
- **assignments-agents.md**: Assignment creation workflow, question design, answer key procedures
- **humaniser-skill.md**: Humaniser (24 AI writing patterns to avoid). Applies globally

Read these files before creating any course content.

## Quarto conventions

- Format: `clean-revealjs` with `self-contained: true`
- Extensions: `grantmcdermott/clean`, `martinomagnifico/appearance`, `martinomagnifico/multimodal`
- Engine: `knitr`
- Emphasis: `[word]{.alert}` for key terms in slides
- Language: `lang: en-GB`
- File naming: `XX-topic.qmd` for lectures, `XX-assignment.qmd` for assignments
- Images: `lectures/lecture-XX/figures/` with relative paths and alt text
- Line width: keep under 100 characters

## Assignment creation workflow

1. Read `assignments-agents.md` before starting
2. Review all existing assignments to avoid topic overlap
3. Draft 30-40 candidate questions with rationale
4. Present shortlist of 5 main + 1 bonus question to instructor
5. Wait for instructor approval before writing the final file
6. Create three deliverables: `.qmd`, `.ipynb`, `.docx`
7. Save answer key to `~/Documents/github/emory-answer-keys/datasci185/`

### Internet-aware LLM constraint

Modern LLMs search the internet by default. Questions like "ask the LLM about X, then verify" are weak because models will search and get it right. Solutions: use web-search-disabled tools (chat.z.ai), provide made-up content, use private documents (RAG), or focus on conceptual understanding.

## Quiz creation

Follow the same 30-40 question drafting process. Quizzes use scenario-based questions that test multiple concepts. See existing quizzes in `quiz/` for the format and style.

## Answer keys

Save to: `~/Documents/github/emory-answer-keys/datasci185/`

Format: `XX-assignment-answers.md` with expected approach, key points, example good answer, common mistakes, and grading notes.

NEVER save answer keys in this repository.
