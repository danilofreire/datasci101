# Lecture 14: Documentation and Dataset Governance

This lecture introduces documentation as the first line of defence against AI bias. Students learn to read and create datasheets for datasets and model cards, and explore how large-scale AI training data is collected and governed.

## Main ideas

### 1. Why documentation matters

* **The "nutrition label" analogy**: just as food labels tell you what you are eating, datasheets tell you what your model is trained on.
* **Without documentation**: you cannot identify bias, reproduce results, or hold anyone accountable.
* **Documentation as accountability**: it forces developers to think about their data before training.

### 2. Datasheets for datasets

* **Gebru et al. (2018)**: a standardised template covering motivation, composition, collection process, intended uses, and maintenance.
* **Key questions**: who collected the data, why, from whom, and with what consent?
* **Activity**: students create a mini-datasheet for a familiar dataset.

### 3. Model cards

* **Mitchell et al. (2019)**: document intended use, metrics, ethical considerations, and what the model is *not* for.
* **System cards**: document the whole AI system, not just one model (red teaming, oversight, component interactions).
* **Disaggregated evaluation**: report metrics by subgroup to reveal hidden performance gaps.

### 4. LLM training data governance

* **Large-scale datasets**: LAION, Common Crawl, and questions about data provenance.
* **FAIR principles**: Findable, Accessible, Interoperable, Reusable.
* **The consent problem**: most AI training data is collected without explicit consent.

## Resources

* [Lecture Slides (HTML)](14-documentation.html)
* [Lecture Source (QMD)](14-documentation.qmd)
* [Datasheets for Datasets (Gebru et al., 2021)](https://arxiv.org/abs/1803.09010)
* [Model Cards for Model Reporting (Mitchell et al., 2019)](https://arxiv.org/abs/1810.03993)
* [FAIR Principles](https://www.go-fair.org/fair-principles/)
