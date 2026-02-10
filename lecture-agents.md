# Agent Instructions: Creating Lectures for DATASCI 185

This document contains all the context and instructions needed to create lecture presentations for DATASCI 185: Introduction to AI Applications. Use this as a reference when asking an AI assistant to help create new lectures.

---

## Course Context

- **Course**: DATASCI 185 - Introduction to AI Applications
- **Institution**: Emory University, Department of Data and Decision Sciences
- **Audience**: Non-technical undergraduate students
- **Instructor**: Danilo Freire

---

## Lecture Specifications

### Target Length

- **36-39 slides** (including section headers)
- Section headers (with blue backgrounds) count as slides
- Aim for ~30 content slides + ~6-8 section headers

### Language

- **British English** throughout
- Examples: colour, tokenisation, organisation, recognise, behaviour, centre
- Avoid American spellings (color, tokenization, organize, etc.)

### Content Style

- **Accessible** to non-technical undergraduates
- Use **analogies** and **real-world examples**
- Avoid jargon without explanation
- **Minimal code** - only very simple examples when absolutely necessary
- **Simple equations** - only for intuition, not derivations
- **Interactive elements** - videos, tools to try, discussion questions

---

## Quarto RevealJS Format

### YAML Header Template

```yaml
---
title: "DATASCI 185: Introduction to AI Applications"
subtitle: "Lecture XX: [Lecture Title]"
author:
  - name: Danilo Freire
    orcid: 0000-0002-4712-6810
    email: danilo.freire@emory.edu
    affiliations: "Department of Data and Decision Sciences <br> Emory University"
format:
  clean-revealjs:
    self-contained: true
    footer: "[Lecture XX](https://raw.githack.com/danilofreire/datasci185/main/lectures/lecture-XX/XX-filename.html)"
    transition: slide
    transition-speed: default
    scrollable: true
revealjs-plugins:
  - multimodal
engine: knitr
editor:
  render-on-save: true
---
```

### R Setup Chunk

Always include this setup chunk after the YAML:

```r
{r setup, include=FALSE}
options(htmltools.dir.version = FALSE)
library(knitr)
opts_chunk$set(
  prompt = T,
  fig.align="center",
  dpi=300,
  cache=T,
  engine.opts = list(bash = "-l")
  )

knit_hooks$set(
  prompt = function(before, options, envir) {
    options(
      prompt = if (options$engine %in% c('sh','bash', 'zsh')) '$ ' else 'R> ',
      continue = if (options$engine %in% c('sh','bash', 'zsh')) '$ ' else '+ '
      )
})

options(repos = c(CRAN = "https://cran.rstudio.com/"))

if (!require("fontawesome", character.only = TRUE)) {
  install.packages("fontawesome", dependencies = TRUE)
  library(fontawesome, character.only = TRUE)
}
```

---

## Slide Structure

### Section Headers

Use blue background for major sections:

```markdown
# Section Title 🎯 {background-color="#2d4563"}
```

### Content Slides with Two Columns

Standard layout (55%/45% or 50%/50%):

```markdown
## Slide Title
### Optional Subtitle

:::{style="margin-top: 30px; font-size: 24px;"}
:::{.columns}
:::{.column width=55%}
- Content here
- Use [important terms]{.alert} for emphasis
- Keep bullet points concise
:::

:::{.column width=45%}
:::{style="text-align: center;"}
[![](figures/image.png){width="100%"}](#){data-modal-type="image" data-modal-url="figures/image.png"}

Source: [Source Name](https://source-url.com)
:::
:::
:::
:::
```

### Key Formatting Elements

| Element | Syntax |
|---------|--------|
| Alert/emphasis | `[text]{.alert}` |
| Link | `[text](url)` |
| Image modal | `[![](figures/img.png){width="X%"}](#){data-modal-type="image" data-modal-url="figures/img.png"}` |
| Fragment (reveal on click) | `:::{.fragment}` content `:::` |
| FontAwesome icon | `` `r fa('icon-name')` `` |
| Styled box | `:::{style="background: rgba(45, 69, 99, 0.1); padding: 15px; border-radius: 10px;"}` |

### Font Sizes

- Title slides: Default
- Content slides: 20-26px (use `:::{style="font-size: 24px;"}`)
- Dense slides or tables: 18-20px
- ASCII diagrams: 17-18px

---

## Standard Slide Sequence

1. **Welcome back!** - Blue title slide
2. **Recap of last class** - Two columns: summary + image
3. **Lecture overview** - Two columns: agenda + image
4. **Tweet/meme of the day** - Single engaging image
5. **Content sections** (3-5 major sections with blue headers)
6. **Summary / Main takeaways** - Use FontAwesome icons
7. **Further reading** - Two columns: Required + Recommended
8. **...and that's all for today!** - Blue closing
9. **See you all soon!** - Blue closing

---

## Folder Structure

For each lecture:

```
lectures/
└── lecture-XX/
    ├── XX-filename.qmd        # Main presentation source
    ├── XX-filename.html       # Rendered output
    ├── README.md              # Lecture summary
    ├── figures/               # Images and GIFs
    │   ├── image1.png
    │   ├── animation.gif
    │   └── ...
    └── _extensions/           # Quarto extensions (copy from existing lecture)
        ├── clean/
        └── multimodal/
```

### Setup Commands

```bash
# Create directory structure
mkdir -p lectures/lecture-XX/figures

# Copy extensions from existing lecture
cp -r lectures/lecture-04/_extensions lectures/lecture-XX/

# Render the presentation
cd lectures/lecture-XX
quarto render XX-filename.qmd
```

---

## Image Guidelines

### Image Types

- **Diagrams**: PNG, prefer transparent background
- **Animations**: GIF for simple animations
- **Screenshots**: PNG
- **Memes/tweets**: PNG or JPEG

### Suggested Sources

- [Medium](https://medium.com) - Diagrams and explanations
- [Towards Data Science](https://towardsdatascience.com) - ML visualisations
- [Vizuara](https://www.vizuaranewsletter.com) - Animated GIFs
- [3Blue1Brown](https://www.3blue1brown.com) - Neural network visuals
- [TensorFlow Projector](https://projector.tensorflow.org) - Embedding visualisations
- [Programmer Humor](https://programmerhumor.io) - Relevant memes
- [Twitter/X](https://x.com) - Tweets of the day
- [Hugging Face](https://huggingface.co) - NLP diagrams
- [Google AI Blog](https://blog.google/technology/ai/) - Latest updates and intuitive posts
- [OpenAI Blog](https://openai.com/news) - Model announcements and capabilities
- [Anthropic Research](https://www.anthropic.com/news) - Safety and interpretability research
- [Stanford HAI](https://hai.stanford.edu/news) - Human-centered AI perspectives
- [MIT News](https://news.mit.edu/topic/artificial-intelligence2) - Technical breakthroughs
- [The Gradient](https://thegradient.pub/) - Long-form AI analysis
- [Nautilus](https://nautil.us/topics/technology) - Accessible science storytelling
- [Distill](https://distill.pub/) - Visual/interactive explanations (classic)

### Image Placeholders

When creating lectures, document images as:

```markdown
<!-- Suggested image: [Description] -->
<!-- Source: [URL or site name] -->
[![](figures/placeholder.png){width="100%"}](#){data-modal-type="image" data-modal-url="figures/placeholder.png"}

Source: [Source Name](https://source-url.com)
```

---

## Reference Accuracy and Verification

To maintain academic integrity and prevent "hallucinations":

- [NO FAKE URLS]{.alert}: Never invent citations, book titles, or URLs. If you are not 100% sure a source exists, do not include it.
- **Verification Requirement**: Use web search tools (e.g., Brave Search MCP, Google Search, or internal web access) to verify **every single URL** before putting it in a `.qmd` or `README.md` file.
- **Functional Links**: Ensure all links are active and point to the correct resource. Prefer official project pages or reputable news outlets over secondary blog posts when possible.
- **Citation Protocol**: If the model is unsure about a specific fact, it should use search tools to verify it rather than guessing.

---

## README.md Template

Each lecture needs a README.md following this format:

```markdown
# Lecture XX: [Title]

[One paragraph summary of what this lecture covers and why it matters.]

## Main Ideas

### 1. [First Major Topic]

* **[Key Concept]**: Brief explanation.
* **[Key Concept]**: Brief explanation.
* **[Key Concept]**: Brief explanation.

### 2. [Second Major Topic]

* **[Key Concept]**: Brief explanation.
* **[Key Concept]**: Brief explanation.

### 3. [Third Major Topic]

* **[Key Concept]**: Brief explanation.
* **[Key Concept]**: Brief explanation.

### 4. [Fourth Major Topic] (if applicable)

* **[Key Concept]**: Brief explanation.
* **[Key Concept]**: Brief explanation.

## Resources

* [Lecture Slides (HTML)](XX-filename.html)
* [Lecture Source (QMD)](XX-filename.qmd)
* [Optional: External Tool or Resource](https://url.com)
```

---

## Content Guidelines

### Slide Content Density

Slides should be **informative and rich**, not just a series of single sentences. Each slide should contain enough content to stand on its own as a learning resource.

**❌ BAD: Thin content**

```markdown
- AI models use data
- Data quality matters
- More data is better
```

**✅ GOOD: Rich content with explanations** (from Lecture 03)

```markdown
- AI models are only as good as [the data they're trained on]{.alert}
- No amount of algorithmic sophistication can fix bad data
- Common data problems:
  - Missing important information (e.g., age, income, etc.)
  - Conflicting labels or formats (e.g., "yes" vs "1")
  - Biases, not representative of reality (e.g., gender, race, etc.)
- [The quality of your models is directly tied to the quality of your data]{.alert} (that's true for humans too!)
```

---

### Bullet Point Patterns

Each bullet point should provide **context, explanation, or examples**—not just a term.

**Pattern 1: Term + Explanation** (from Lecture 02)

```markdown
- **1642**: [Blaise Pascal](https://en.wikipedia.org/wiki/Blaise_Pascal) builds the [Pascaline](https://en.wikipedia.org/wiki/Pascaline), a mechanical calculator for addition and subtraction
- **1673**: [Gottfried Leibniz](https://en.wikipedia.org/wiki/Gottfried_Wilhelm_Leibniz) creates a [machine that can multiply and divide](https://en.wikipedia.org/wiki/Leibniz_calculator)
```

**Pattern 2: Nested explanations with sub-bullets** (from Lecture 02)

```markdown
- [Most classifiers output a [probability score]{.alert}
- We choose a [threshold]{.alert} to decide "positive" vs "negative"
- Moving the threshold [trades off precision and recall]{.alert}:
  - **High threshold** (strict): Only confident positives → High precision, low recall
  - **Low threshold** (lenient): Accept weak positives → High recall, low precision
```

**Pattern 3: Key insight with emphasis** (from Lecture 03)

```markdown
- [Can intelligence be reduced to rules and symbols, or does it emerge from interconnected units?]{.alert}
```

---

### Numbered Lists with Descriptions

Use numbered lists for processes, steps, or structured explanations:

**Example** (from Lecture 02):

```markdown
A transformer has [three main parts]{.alert}:

1. **Embedding**: Turn words into numbers
2. **Transformer Blocks**: Mix and refine information (the magic happens here!)
3. **Output**: Predict the next word
```

---

### Tables for Comparisons

Use tables to compare concepts, show evolution, or provide quick reference:

**Historical comparison** (from Lecture 02):

```markdown
| Model | Year | Parameters | Notable Achievement |
|-------|------|------------|---------------------|
| GPT-1 | 2018 | 117M | Showed pre-training works |
| BERT | 2018 | 340M | Revolutionised NLP benchmarks |
| GPT-2 | 2019 | 1.5B | "Too dangerous to release" |
| GPT-3 | 2020 | 175B | Few-shot learning emergence |
```

**Task overview** (from Lecture 03):

```markdown
| Task | Description | Example |
|------|-------------|---------|
| **Object Detection** | Find and locate objects in images | Self-driving cars detecting pedestrians |
| **Segmentation** | Label every pixel in an image | Medical imaging (tumour boundaries) |
| **Ranking** | Order items by relevance | Search results, recommendations |
```

**Real-world impact** (from Lecture 03):

```markdown
| Case | What went wrong | Impact |
|------|-----------------|--------|
| Credit scoring | Data reflected historical gender-based income gaps | [Lower credit limits]{.alert} for women with similar profiles |
| Facial recognition | Training data mostly light-skinned faces | [Error rates 34x higher]{.alert} for dark-skinned women |
```

---

### Styled Boxes for Examples and Key Points

Use styled boxes to highlight worked examples, calculations, or important summaries:

**Blue box for examples** (from Lecture 05):

```markdown
:::{style="background: rgba(45, 69, 99, 0.1); padding: 15px; border-radius: 10px;"}
**Cost calculation example:**

Prompt: 500 tokens
Response: 1,000 tokens
Model: GPT-4o

Input cost: 500 × $2.50/1M = $0.00125
Output cost: 1,000 × $10/1M = $0.01
**Total: ~$0.01 per query**
:::
```

**Red/warning box for important notes**:

```markdown
:::{style="background: rgba(230, 57, 70, 0.1); padding: 15px; border-radius: 10px;"}
**Warning**: These weren't algorithm failures—they were [data failures]{.alert}.
:::
```

---

### Blockquotes for Key Insights

Use blockquotes for memorable statements or key takeaways:

**From Lecture 02:**

```markdown
> "Every aspect of learning or any other feature of intelligence can in principle be so precisely described that [a machine can be made to simulate it]{.alert}."
```

**From Lecture 03:**

```markdown
> "Instead of focusing on the code, companies should focus on [developing the processes]{.alert} to get and maintain good data."
```

---

### Interactive Elements

Include opportunities for engagement:

**Discussion questions** (from Lecture 03):

```markdown
> **"If you had to choose, which would give you better AI predictions?"**

:::{.columns}
:::{.column width=50%}
:::{.fragment}
**Option A:** 🧠

A [state-of-the-art algorithm]{.alert} trained on low-quality data
:::
:::

:::{.column width=50%}
:::{.fragment}
**Option B:** 📊

A [simple algorithm]{.alert} trained on high-quality data
:::
:::
:::

:::{.fragment}
**Discuss with your neighbour for 1 minute!**
:::
```

**Try-it-yourself activities** (from Lecture 02):

```markdown
- Try ELIZA here: <https://anthay.github.io/eliza.html>
- 🎬 Watch: [Word2Vec Explained](https://www.youtube.com/watch?v=viZrOnJclY0) (10 min)
```

**Live demos** (from Lecture 03):

```markdown
- Try it out: Generate an image of "a CEO" and "a nurse" using two different LLMs, such as [Qwen](https://qwen.ai/) and [Gemini](https://gemini.ai/). What do you notice?
```

---

### Equations

Use LaTeX for equations, but **always explain in words**:

**With word explanation** (from Lecture 03):

```markdown
$$\kappa = \frac{p_o - p_e}{1 - p_e}$$

- $p_o$ = observed agreement
- $p_e$ = expected agreement by chance
```

**With intuitive labels** (from Lecture 04):

```markdown
$$\text{Total Error} = \text{Bias}^2 + \text{Variance} + \text{Noise}$$
```

---

### Linking to External Resources

Always include relevant Wikipedia links, papers, and videos:

**Example** (from Lecture 02):

```markdown
- **1936**: [Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing) publishes "[On Computable Numbers](https://www.cs.virginia.edu/~robins/Turing_Paper_1936.pdf)"
- Introduces the concept of a [universal machine]{.alert} that can compute anything computable
```

---

### Historical Context and Storytelling

Provide narrative elements that make content memorable:

**From Lecture 02:**

```markdown
- For most of history, [the word "computer" referred to a person]{.alert}, not a machine!
- Large teams of human computers performed complex calculations:
  - Astronomical tables
  - Ballistics trajectories
  - Census data
- Often women, who were paid less than male mathematicians
```

---

### What to Include

- Real-world examples and applications
- Links to interactive tools and videos (with duration)
- Discussion questions for engagement
- Comparisons with intuitive analogies
- Images, GIFs, and memes for visual learning
- Tables for structured comparisons
- Historical context and narrative
- Worked examples in styled boxes
- External links to Wikipedia, papers, tools

### What to Avoid

- Single-sentence bullet points without context
- Complex mathematical derivations
- Extensive code blocks
- Jargon without explanation
- Overly dense slides (split if needed)
- Placeholder text like "lorem ipsum"
- Thin slides with only titles and brief points
- Missing source attributions on images

### Equations

Keep simple and intuitive:

```markdown
$\text{Simple Formula} = \frac{\text{Part}}{\text{Whole}}$
```

Use words in equations when helpful:

```markdown
$\text{Error} = \text{Actual} - \text{Predicted}$
```

---

## Checklist for New Lectures

- [ ] Create `lectures/lecture-XX/` directory
- [ ] Create `figures/` subdirectory
- [ ] Copy `_extensions/` from existing lecture
- [ ] Create QMD file with proper YAML header
- [ ] Include R setup chunk
- [ ] Create 32-37 slides
- [ ] Verify British English throughout (but use USD/$ instead of GBP/£)
- [ ] Add image placeholders with sources
- [ ] Render with `quarto render`
- [ ] Create README.md
- [ ] Test navigation in browser

---
