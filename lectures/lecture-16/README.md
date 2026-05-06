# Lecture 14: Types of Bias and How They Arise

This lecture provides a deep, critical exploration of AI bias for undergraduate students. Through case studies, debates, and the impossibility theorem, students grapple with difficult questions about fairness, accountability, and whether AI can ever be truly "fair."

## Main Ideas

### 1. What is Bias?

* **Multiple meanings**: Statistical, cognitive, cultural, algorithmic, historical
* **The mirror problem**: AI learns from human data, so it reflects human biases
* **Amplification**: AI can scale and entrench existing discrimination

### 2. Types of Bias

* **Historical bias**: Past discrimination encoded in training data (Amazon hiring)
* **Representation bias**: Underrepresented groups have higher error rates (facial recognition)
* **Measurement bias**: Proxies that don't work equally (healthcare costs for need)
* **Aggregation bias**: One-size-fits-all models fail diverse populations

### 3. Case Studies

* **Hiring**: LLMs favour white male-associated names; Amazon penalised women
* **Facial recognition**: 43x error rate difference between light-skinned men and dark-skinned women
* **Criminal justice (COMPAS)**: Black defendants twice as likely to be falsely flagged high-risk
* **Healthcare**: Algorithms miss sick Black patients, AI fails on darker skin tones

### 4. The Hard Questions

* **Impossibility theorem**: You cannot satisfy all fairness criteria simultaneously
* **Fairness tradeoffs**: Accuracy vs. fairness, individual vs. group, short-term vs. long-term
* **Is AI bias fixable?** Optimists vs. sceptics debate

## Resources

* [Lecture Slides (HTML)](14-bias.html)
* [Lecture Source (QMD)](14-bias.qmd)
* [Fairness and Machine Learning Book](https://fairmlbook.org/) (free)
* [Gender Shades Project](http://gendershades.org/)
* [ProPublica COMPAS Analysis](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing)
* [AI Incident Database](https://incidentdatabase.ai/)
