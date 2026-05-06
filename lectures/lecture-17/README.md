# Lecture 16: Case Studies — Biased Outcomes in Health, Hiring, and Policing

This lecture examines three high-profile cases where algorithmic systems produced discriminatory outcomes. We move from theory to practice, looking at real systems that affected real people and asking what went wrong and what we can learn.

## Main ideas

### 1. Healthcare: the Optum algorithm

* **The proxy problem**: The algorithm used healthcare costs to predict healthcare needs, but costs reflect access to care, not need for care.
* **Hidden disparity**: At the same risk score, Black patients were considerably sicker than white patients.
* **The fix**: Switching from predicting costs to predicting health outcomes reduced racial bias by around 80%.

### 2. Facial recognition: Gender Shades

* **Representation bias**: Commercial systems from IBM, Microsoft, and Face++ had error rates up to 34x higher for darker-skinned women compared to lighter-skinned men.
* **Training data skew**: Standard face datasets were predominantly male and lighter-skinned, so models learned to recognise what they saw most often.
* **Real-world harm**: Documented wrongful arrests in the US based on facial recognition errors have all involved Black individuals.

### 3. Criminal justice: COMPAS

* **Fairness impossibility**: When base rates differ between groups, you cannot simultaneously achieve equal calibration and equal error rates.
* **Feedback loops**: Higher predicted risk leads to more incarceration, which destabilises communities and increases actual crime.
* **No neutral choice**: Choosing calibration over equal error rates is a value judgment, not a technical decision.

### 4. Common patterns

* **Proxy problems**: Using one thing (costs, arrests) to predict another (health needs, danger) encodes hidden assumptions.
* **Historical bias**: Systems trained on biased historical data reproduce and amplify that bias.
* **Invisible disparities**: Overall accuracy can hide group-specific failures; disaggregated analysis is essential.

## Resources

* [Lecture slides (HTML)](16-case-studies.html)
* [Lecture source (QMD)](16-case-studies.qmd)
* [Obermeyer et al. (2019) – Dissecting racial bias in healthcare algorithms](https://www.science.org/doi/10.1126/science.aax2342)
* [Gender Shades Project](http://gendershades.org/)
* [ProPublica – Machine Bias](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing)
* [Coded Bias documentary](https://www.codedbias.com/)
