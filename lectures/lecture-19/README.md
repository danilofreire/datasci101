# Lecture 19: Privacy and Data Protection

This lecture examines how AI transforms privacy challenges, surveys the legal frameworks designed to protect personal data, and explores technical approaches to privacy-preserving machine learning.

## Main ideas

### 1. Privacy in the AI age

* **Scale of collection**: AI enables cheap, pervasive, continuous data collection from ordinary activities.
* **Inference capabilities**: AI can predict sensitive information (health, politics, sexuality) from seemingly innocuous data.
* **Training data risks**: LLMs trained on internet data may memorise and regurgitate personal information.

### 2. Legal frameworks

* **GDPR principles**: Lawfulness, purpose limitation, data minimisation, accuracy, storage limitation, security, accountability.
* **Individual rights**: Access, rectification, erasure, portability, objection, and protection from purely automated decisions.
* **US approach**: Patchwork of sectoral laws (HIPAA, FERPA, COPPA); 23 states, led by California, have comprehensive privacy laws.
* **Tensions with AI**: Purpose limitation vs model training, data minimisation vs big data, erasure vs trained models.

### 3. Technical approaches

* **Differential privacy**: Adding calibrated noise to preserve aggregate patterns while protecting individuals.
* **Federated learning**: Training models without centralising data by sharing model updates instead.
* **Synthetic data**: Fake records that keep the real patterns, though generators can still leak training data.
* **Limitations**: Technical fixes don't address the fundamental power imbalance in data collection.

### 4. Tensions and trade-offs

* **Dual use**: The same AI systems can enable beneficial services or surveillance depending on governance.
* **Privacy washing**: Differential privacy with a large epsilon, or federated learning that still collects metadata, protects little.
* **Clearview AI**: 3 billion scraped photos in 2020 (70+ billion today), fines across Europe, and an ACLU settlement under Illinois BIPA.
* **Individual vs collective**: Privacy is collective, making individual opt-out insufficient for systemic change.

## Resources

* [Lecture slides (HTML)](https://danilofreire.github.io/datasci101/lectures/lecture-19/19-privacy.html)
* [Lecture source (QMD)](19-privacy.qmd)
* [GDPR official text](https://gdpr-info.eu/)
* [EFF Surveillance Self-Defense](https://ssd.eff.org/)
* [Apple Differential Privacy Overview](https://www.apple.com/privacy/docs/Differential_Privacy_Overview.pdf)
