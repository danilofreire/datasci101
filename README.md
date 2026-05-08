# DATASCI 101: Course Website Source (Spring 2026 archive)

This is the archived source for the Spring 2026 instance of
[DATASCI 101: Introduction to AI
Applications](https://danilofreire.github.io/datasci101) at
Emory University. The semester ran on Mondays and Wednesdays
in Psychology Building, Room 290.

The live site is the current (Fall 2026) instance, served
from the [`gh-pages`](https://github.com/danilofreire/datasci101/tree/gh-pages)
branch. This `gh-pages-spring-semester` branch is kept as a
snapshot of how the site looked at the end of Spring 2026.
Lecture slides, assignments, and the project brief from that
run live on the
[`spring-semester`](https://github.com/danilofreire/datasci101/tree/spring-semester)
branch.

## What's in this archive

- **[Syllabus](syllabus.qmd)**: schedule, grading, and policies as taught in Spring 2026.
- **[Lectures](lectures.qmd)**: slides and readings for each session, with dates.
- **[Assignments](assignments.qmd)**: instructions and starter files.

## Rebuilding the archive

If you need to regenerate the static site from these sources:

```bash
quarto render
```

That builds the HTML into `docs/`. To preview locally:

```bash
quarto preview
```

The archive is not under active development, so changes here
are intended only for fixes (broken links, typos) rather than
new content.

## Repository layout

```text
.
├── *.qmd                   # source for site pages (syllabus, lectures, assignments, index)
├── _quarto.yml             # site configuration
├── docs/                   # rendered output
├── styles.css              # site styles
├── article-template.latex  # PDF rendering template
└── style.latex             # additional LaTeX styles
```

## Questions or feedback?

Open a [GitHub
issue](https://github.com/danilofreire/datasci101/issues),
email me at <danilo.freire@emory.edu>, or check the current
course site linked above.

## License

Released under the [MIT License](LICENSE.qmd). You are free
to use, modify, or distribute the materials with attribution.
