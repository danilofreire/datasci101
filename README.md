# DATASCI 101: Course Website Source

This is the source for the [DATASCI 101 course
website](https://danilofreire.github.io/datasci101), the
Fall 2026 instance of *Introduction to AI Applications* at
Emory University.

If you came here looking for the website itself, click the
link above. This branch (`gh-pages`) holds the Quarto sources
and the rendered HTML that GitHub Pages serves. Lecture
slides, assignments, and the project brief live on the
[`main`](https://github.com/danilofreire/datasci101/tree/main)
branch.

## What's on the site

- **[Syllabus](syllabus.qmd)**: schedule, grading, and policies.
- **[Lectures](lectures.qmd)**: slides and readings for each session, with dates.
- **[Assignments](assignments.qmd)**: instructions and starter files.

## Updating the site

From the repo root:

```bash
quarto render
```

That builds the static HTML into `docs/`, which is the
directory GitHub Pages serves from this branch. To preview
changes live while editing:

```bash
quarto preview
```

When you are happy with the result, commit and push to
`gh-pages` and GitHub Pages picks up the new `docs/` within
a minute or two.

## Repository layout

```text
.
├── *.qmd                   # source for site pages (syllabus, lectures, assignments, index)
├── _quarto.yml             # site configuration
├── docs/                   # rendered output, served by GitHub Pages
├── custom.scss             # light-theme overrides
├── custom-dark.scss        # dark-theme overrides
├── article-template.latex  # PDF rendering template
└── style.latex             # additional LaTeX styles
```

## Questions or feedback?

Open a [GitHub
issue](https://github.com/danilofreire/datasci101/issues),
email me at <danilo.freire@emory.edu>, or catch me after class.

## License

Released under the [MIT License](LICENSE.qmd). You are free
to use, modify, or distribute the materials with attribution.
