# Turkish Language Model Evaluation Tool


The Turkish Language Model Evaluation tool is an extended version of the [lm-eval-harness](https://github.com/EleutherAI/lm-evaluation-harness) tool, specifically add tasks for benchmarking Turkish Large Language Models (LLMs). This tool encompasses a variety of tasks curated to assess different aspects of model performance in the Turkish language. Our primary goal is to objectively evaluate the capabilities of large language models in understanding and processing Turkish.

## Tasks

1. **Extractive Question Answering**
2. **Machine Translation**
3. **Multiple Choice**
4. **Summarization**
5. **Procedural Language Understanding**

## Installation & Usage

Clone the repository using the following command to fetch the submodules:

```bash
git clone git@github.com:KUIS-AI/tr-lm-eval.git --recursive
```

Replace the tasks folder in `lm-evaluation-harness`:
```bash
cd tr-lm-eval
rm -rf lm-evaluation-harness/lm_eval/tasks
ln -sfn "$(pwd)/tasks" "$(pwd)/lm-evaluation-harness/lm_eval/tasks"
```

Create a virtual environment with any tool of your choice (e.g. `conda`, `virtualenv`).
```bash
conda create -n tr-lm-eval python=3.9
conda activate tr-lm-eval
```

Install the evaluation harness and other dependencies:
```bash
pip install -e ./lm-evaluation-harness
pip install -r requirements.txt
```

Basic usage:
```bash
python -m lm_eval --model hf \
 --model_args pretrained=openai-community/gpt2 \
 --tasks exams_tr,xquad-tr,tquad,turkish_plu_prompt --device cuda:0 --batch_size 4 --write_out --log_samples --output_path outs
```

For more details on the usage, refer to the [lm-eval-harness](/lm-evaluation-harness/) repository.


## Task Details

| Datasets                                    | Tasks                                              | Metrics                            |
|---------------------------------------------|----------------------------------------------------|------------------------------------|
| [xquad](/tasks/xquad/), [tquad](/tasks/tquad/) | Extractive Question Answering                      | Exact Match, F1                    |
| [wmt2016](/tasks/wmt2016/)                  | Machine Translation                                | wer, bleu                          |
| [exams](/tasks/exams/)                      | Multiple Choice                                    | Accuracy, Norm Accuracy            |
| [TurkishPLU/summarization](/tasks/tr_wikihow_summ/), [MLSum](tasks/mlsum), [XLSum](tasks/xlsum) | Summarization                                      | Rouge Scores                       |
| [Turkish PLU](/tasks/turkish_plu/)          | Step Ordering, Next Event Prediction, Step Inference, Goal Inference | Accuracy, Norm Accuracy            |

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