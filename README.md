# Turkish Language Model Evaluation Tool


The Turkish Language Model Evaluation tool is an extended version of the [lm-eval-harness](https://github.com/EleutherAI/lm-evaluation-harness) tool, specifically add tasks for benchmarking Turkish Large Language Models (LLMs). This tool encompasses a variety of tasks curated to assess different aspects of model performance in the Turkish language. Our primary goal is to objectively evaluate the capabilities of large language models in understanding and processing Turkish.

## Tasks

1. **Extractive Question Answering**
2. **Machine Translation**
3. **Multiple Choice**
4. **Summarization**
5. **Procedural Language Understanding**

## Installation & Usage

*TODO*

## Task Details

### Extractive Question Answering
- **Datasets**: [xquad](/tasks/xquad/), [tquad](/tasks/tquad/)
- **Metrics**: Exact Match, F1
- **Prompt Format**:
  ```
  Kaynak: {{context}}
  
  Soru: {{question}}

  Cevap: {{answer}}
  ```
This task evaluates the model's ability to find and extract answers from a given context. Note that the xquad dataset has only validation set, examples will be selected from same set in few-shot setting.

### Machine Translation
- **Dataset**: [wmt2016](/tasks/wmt2016/)
- **Metrics**: wer, bleu
- **Prompt**:
  ```
  translate English to Turkish: {{translation.en}} {{translation.tr}}
  ```
This task focuses on translating English to Turkish. You can modify the prompt for Turkish to English translation. It supports encoder-decoder models like mBART and T5.

### Multiple Choice
- **Dataset**: [exams](/tasks/exams/)
- **Metrics**: Accuracy, Norm Accuracy
- **Prompt**:
  ```
  {{question}} {{choice}}
  ```
This task involves question and answer pairs for each choice, with the correct answer typically having the highest perplexity. The accuracy and normalized accuracy (calculated from normalized perplexities) are the key metrics.

### Summarization
- **Datasets**: [TurkishPLU/summarization](/tasks/tr_wikihow_summ/), [MLSum](tasks/mlsum), [XLSum](tasks/xlsum)
- **Metrics**: Rouge Scores
- **Prompt Format**:

TurkishPLU/summarization:
  ```
  {{text}} {{summary}}
  ```
For MLSum and XLSum:
  ```
  Başlık: {{title}}

  Metin: {{text}}

  Özet: {{summary}}
  ```

### Turkish PLU
- **[Tasks](/tasks/turkish_plu/)**: Step Ordering, Next Event Prediction, Step Inference, Goal Inference
- **Metrics**: Accuracy, Norm Accuracy
- **Prompts**:
  - Step Ordering
    ```
    Hedef: {{sent2}} {{['Önce: ' + ending0 + ' Sonra: ' + ending1, 'Önce: ' + ending1 + ' Sonra: ' + ending0]}}
    ```
  - Step Inference
    ```
    Hedef: {{sent2}} Örnek Adım: {{[ending0, ending1, ending2, ending3]}}
    ```
  - Goal Inference
    ```
    Örnek Adım: {{sent2}} Hedef: {{[ending0, ending1, ending2, ending3]}}
    ```
  - Next Event Prediction
    ```
    Hedef: {{sent1}} Adım: {{sent2}} Bir sonraki adım: {{[ending0, ending1, ending2, ending3]}}
    ```
These tasks evaluate a model's understanding of procedural language in various formats. The accuracy and normalized accuracy are used as metrics, similar to the Multiple Choice task.