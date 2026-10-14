# Editorial roadmap

This document is a **planned table of subjects**, not published chapter content. The two chapters in Volume 02 are the only completed content in the initial repository. The exact division between chapters, sections, and subsections can evolve as the books grow.

## Volume 01 — Computer Science Foundations

- CS fundamentals
- Data structures
- Algorithms

## Volume 02 — Programming and Software Engineering

**Available**

- Object-Oriented Design → Interfaces and Protocols in Python
- Concurrency and Asynchronous Programming → Coroutines and the `asyncio` Event Loop

**Possible future growth**

- Programming language mechanisms and interfaces
- Software architecture and API design
- Testing and reliability in software engineering

## Volume 03 — Computer and Distributed Systems

- Operating systems
- Distributed systems
- Storage systems
  - Object storage
  - Amazon S3, including versions and version IDs

## Volume 04 — Databases and Data Engineering

- Databases
  - Relational databases
  - NoSQL databases
    - Key-value stores
    - Amazon DynamoDB, event hooks, and Boto3 usage
  - Vector databases
- Data ingestion and ETL

## Volume 05 — Machine Learning Foundations

- Learning paradigms
  - Supervised learning: regression and classification
  - Unsupervised learning: clustering
- Generalization behavior
  - Overfitting and memorization as failure modes
  - Generalization and bias-variance tradeoff
- Parametric and non-parametric models
  - Usage scenarios and relationship to learning paradigms and LLMs
  - Statistical definitions
- Statistical learning and linear models
  - High-dimensionality effects
  - Linear and multiple regression
  - Normal equations, gradient descent, and gradient vectors
  - Multicollinearity
  - Regularization: L1/Lasso, L2/Ridge
  - Data normalization
- Tree-based ensemble learning
  - Base learners and decision trees
  - Bagging, boosting, stacking, and voting
  - Random forests
  - AdaBoost, gradient boosting, XGBoost, CatBoost
- Other classical methods: SVMs, Naive Bayes, kNN
- Neural network and optimization fundamentals
  - Perceptrons, feedforward networks, activation functions, backpropagation
  - Vanilla gradient descent, SGD, Adam, AdamW
  - Vanishing gradients and internal covariate shift
  - Logits, softmax, cross entropy
- Representation learning and evaluation fundamentals

## Volume 06 — Deep Learning and Applied AI

- LLM fundamentals
  - Transformer architecture and language modeling
  - Masked and causal language modeling
  - Encoder-only, decoder-only, encoder-decoder architectures
  - Attention, multi-head self-attention, cross-attention, masked self-attention
  - Positional encoding, residual and skip connections
  - Pretraining objectives, denoising, autoregressive generation
  - Model families: GPT, BERT, BART, RoBERTa, T5, PLBART, Llama 2
- RAG systems: architecture, failure modes, advanced topics
- Agentic analytics systems, including Tableau Next
- Frameworks and tooling, including TensorFlow

## Volume 07 — Machine Learning Research and Evaluation

- ML research methodology
- Evaluation fundamentals and experimental methodology
- GenAI evaluation, adaptation, and reliability

## Volume 08 — AI Safety and Tradeoffs

- AI safety
- AI tradeoffs

## Cross-volume resources

Thematic diagrams live with their relevant chapter or, when truly reusable, under `shared/figures/`. They are not maintained as a separate book.
