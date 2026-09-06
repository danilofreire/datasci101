# Lecture 06: Language, Tokenisation, and Embeddings

This lecture explores how Large Language Models process and understand human language. We examine the transformation pipeline from text to numbers, covering tokens, embeddings, and the parameters that power modern AI systems.

## Main Ideas

### 1. How LLMs "See" Text

* **The Translation Problem**: Computers only understand numbers, so text must be converted through tokenisation and embedding.
* **The Processing Pipeline**: Text → Tokens → Token IDs → Embeddings → Neural Network → Output.
* **Why It Matters**: Understanding this pipeline helps you write better prompts and debug issues.

### 2. Tokens and Tokenisation

* **What is a Token?**: The basic unit an LLM reads; can be a word, part of a word, or a character.
* **Tokenisation Methods**: Word-based, character-based, and subword (BPE) approaches.
* **Context Windows**: Token limits determine how much text a model can process at once.
* **Cost Implications**: API pricing is per token, not per word.

### 3. Embeddings

* **Words as Vectors**: Embeddings convert tokens into high-dimensional vectors (typically 4,096 numbers).
* **Semantic Similarity**: Similar words have similar vectors; "cat" is closer to "dog" than to "aeroplane."
* **Vector Arithmetic**: The famous king − man + woman ≈ queen example.
* **Modern Embeddings**: From Word2Vec to contextual embeddings in transformers.

### 4. Parameters

* **What is a Parameter?**: Numbers learned during training that control model behaviour.
* **Scale**: GPT-3 has 175 billion parameters; GPT-4 has over a trillion (estimated).
* **Types**: Embeddings, weights, and biases each play different roles.
* **Hyperparameters**: Settings like temperature that you control when using the model.

## Resources

* [Lecture Slides (HTML)](06-language.html)
* [Lecture Source (QMD)](06-language.qmd)
* [OpenAI Tokenizer](https://platform.openai.com/tokenizer)
* [TensorFlow Embedding Projector](https://projector.tensorflow.org/)
