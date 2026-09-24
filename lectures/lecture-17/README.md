# Lecture 17: Types of Bias and How They Arise

This lecture provides a deep, critical exploration of AI bias for undergraduate students. Through case studies, debates, and the impossibility theorem, students grapple with difficult questions about fairness, accountability, and whether AI can ever be truly "fair."

## Main Ideas

### 1. What is Bias?

* **Multiple meanings**: Statistical, cognitive, cultural, algorithmic, historical
* **The mirror problem**: AI learns from human data, so it reflects human biases
* **Amplification**: AI can scale and entrench existing discrimination

### 2. Types of Bias

* **Historical bias**: Past discrimination encoded in training data (Amazon hiring)
* **Representation bias**: Underrepresented groups have higher error rates (voice assistants)
* **Measurement bias**: Proxies that don't work equally (ZIP codes, healthcare costs for need)
* **Aggregation bias**: One-size-fits-all models fail diverse populations
* **Evaluation bias**: Benchmarks that miss the people the model will serve (ImageNet)
* **Deployment bias**: Models that fail in a new context (a UK COVID-19 model used in Vietnam)
* **Feedback loops**: Predictions shape the next round of training data (predictive policing)

### 3. Case Studies

* **Policing**: Robert Williams, wrongly arrested in Detroit in 2020 after a facial recognition match
* **Hiring**: Amazon's CV screener penalised women; NYC now requires bias audits of hiring AI
* **Healthcare**: An algorithm used past spending as a proxy for need and deprioritised Black patients
* **Speech**: Speech recognition gets 35% of words wrong for Black speakers vs 19% for white speakers

### 4. The Hard Questions

* **Impossibility theorem**: You cannot satisfy all fairness criteria simultaneously
* **Fairness tradeoffs**: Accuracy vs. fairness, individual vs. group, short-term vs. long-term
* **Is AI bias fixable?** Optimists vs. sceptics debate

## Resources

* [Lecture Slides (HTML)](https://danilofreire.github.io/datasci101/lectures/lecture-17/17-bias.html)
* [Lecture Source (QMD)](17-bias.qmd)
* [Fairness and Machine Learning Book](https://fairmlbook.org/) (free)
* [Gender Shades Project](http://gendershades.org/)
* [ProPublica COMPAS Analysis](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing)
* [AI Incident Database](https://incidentdatabase.ai/)
