# Pergel: A Unified Benchmark for Evaluating LLMs in Turkish

Pergel (**Per**formans Göster**gel**eri) is an extended version of the [lm-eval-harness](https://github.com/EleutherAI/lm-evaluation-harness) tool, specifically includes tasks/datasets for benchmarking Turkish Large Language Models (LLMs). This tool encompasses a variety of tasks curated to assess different aspects of model performance in the Turkish language. Our primary goal is to objectively evaluate the capabilities of large language models in understanding and processing Turkish.

## Tasks

1. **Extractive Question Answering**
2. **Machine Translation**
3. **Multiple Choice**
4. **Summarization**
5. **Procedural Language Understanding**

## Installation

Clone the repository using the following command to fetch the submodules:

```bash
git clone git@github.com:KUIS-AI/pergel.git --recursive
```

Replace the tasks folder in `lm-evaluation-harness`:
```bash
cd pergel
ln -sfn "$(pwd)/tasks" "$(pwd)/lm-evaluation-harness/lm_eval/tasks/pergel"
```

Create a virtual environment with any tool of your choice (e.g. `conda`, `virtualenv`).
```bash
conda create -n pergel python=3.9
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
conda activate pergel
```

Install the evaluation harness and other dependencies:
```bash
pip install toml
pip install -e ./lm-evaluation-harness
pip install -r requirements.txt
```

## Usage

Pergel utilizes the identical command line interface as lm-eval-harness. Here is an example command,
```bash
python -m lm_eval --model hf \
 --model_args pretrained=openai-community/gpt2 \
 --tasks exams_tr,xquad_tr,tquad,turkish_plu --device cuda:0 --batch_size 4 --write_out --log_samples --output_path outs
```

For more details on the usage, refer to the [lm-eval-harness](/lm-evaluation-harness/) repository.

Checkout the [examples](/examples/) folder for more examples to run the all tasks with different models.

## Task Details

| Datasets                                    | Tasks                                              | Metrics                            |
|---------------------------------------------|----------------------------------------------------|------------------------------------|
| [xquad](/tasks/xquad/), [tquad](/tasks/tquad/), [MKQA-tr](/tasks/mkqa_tr/) | Extractive Question Answering                      | Exact Match, F1                    |
| [gecturk](/tasks/gecturk/) | Grammatical Error Correction | Exact Match |
| [wmt2016](/tasks/wmt2016/)                  | Machine Translation                                | wer, bleu                          |
| [EXAMS](/tasks/exams/), [Belebele](/tasks/belebele_tr/), [IronyTR](/tasks/ironytr/), [TRClaim-19](/tasks/trclaim19/), [xcopa](/tasks/xcopa/), [news_cat](/tasks/news_cat/), [XNLI](/tasks/nli_tr/), [SNLI-tr](/tasks/nli_tr/), [MNLI-tr](/tasks/nli_tr/), [OffensEval-TR](/tasks/offenseval_tr/), [STSb-TR](/tasks/sts_tr/), [XCOPA](/tasks/xcopa/), [X-FACT](/tasks/xfact/) | Multiple Choice                                    | Accuracy, Norm Accuracy            |
| [TurkishPLU/summarization](/tasks/tr_wikihow_summ/), [MLSum](tasks/mlsum), [XLSum](tasks/xlsum), [WikiLingua](/tasks/wiki_lingua/) | Summarization                                      | Rouge Scores                       |
| [Turkish PLU](/tasks/turkish_plu/)          | Step Ordering, Next Event Prediction, Step Inference, Goal Inference | Accuracy, Norm Accuracy            |
