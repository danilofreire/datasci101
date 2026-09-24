# Lecture 04: Supervised, Unsupervised, and Reinforcement Learning

This lecture covers the three main ways machines learn from data. We look at how models use labels, find hidden patterns on their own, or learn through trial and error.

## Main Ideas

### 1. Supervised Learning

* **Learning from Labels**: Using input-output pairs to train models like linear regression and decision trees.
* **Linear Models**: Linear and logistic regression as simple baselines before complex models.
* **Neural Networks**: Complex systems inspired by the brain that can learn very difficult patterns.

### 2. The Bias-Variance Trade-off

* **Overfitting**: When a model memorises specific training examples but fails on new data.
* **Underfitting**: When a model is too simple to capture the underlying pattern.
* **Cross-validation**: A more reliable estimate, because every data point is tested once across K folds.

### 3. Unsupervised Learning

* **Finding Structure**: Grouping similar data points (clustering) or simplifying complex information.
* **Dimensionality Reduction**: PCA, t-SNE and UMAP compress many features into a few.

### 4. Reinforcement Learning (RL)

* **Trial and Error**: Agents learning to reach a goal by receiving rewards or punishments.
* **Explore or Exploit**: Try new actions or reuse known good ones; ε-greedy balances the two.
* **RLHF**: How human feedback is used to make models like ChatGPT more helpful and safe.
* **AI Safety**: The challenge of ensuring AI systems do what we intended them to do.

## Resources

* [Lecture Slides (HTML)](https://danilofreire.github.io/datasci101/lectures/lecture-04/04-learning.html)
* [Lecture Source (QMD)](04-learning.qmd)
