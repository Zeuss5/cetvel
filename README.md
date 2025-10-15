# Cetvel: A Unified Benchmark for Evaluating Turkish LLMs

Cetvel is an extended version of the [lm-eval-harness](https://github.com/EleutherAI/lm-evaluation-harness) tool, specifically includes tasks/datasets for benchmarking Turkish Large Language Models (LLMs). This tool encompasses a variety of tasks curated to assess different aspects of model performance in the Turkish language. Our primary goal is to objectively evaluate the capabilities of large language models in understanding and processing Turkish.

## Tasks

1. **Extractive Question Answering**
2. **Multiple Choice Question Answering**
3. **Natural Language Inference**
4. **Text Classification**
5. **Machine Translation**
6. **Summarization**
7. **Grammatical Error Correction**

## Installation

Clone the repository using the following command to fetch the submodules:

```bash
git clone https://github.com/Zeuss5/cetvel.git --recursive
```

Create a virtual environment with any tool of your choice (e.g. `conda`, `virtualenv`) and install core PyTorch dependencies.
```bash
conda create -n cetvel python=3.9
conda activate cetvel
pip install torch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1 --index-url https://download.pytorch.org/whl/cu118
```

Note that we only tested Cetvel using the specified PyTorch (`==2.3.1`) and CUDA versions (`==11.8`).

Install the evaluation harness and other dependencies:
```bash
pip install toml
pip install -e ./lm-evaluation-harness
pip install -r requirements.txt
```

## Usage

Cetvel utilizes the identical command line interface as `lm-eval-harness`. Here is an example command,
```bash
python -m lm_eval --model hf --include_path ./tasks/ \
 --model_args pretrained=openai-community/gpt2 \
 --tasks exams_tr,xquad_tr,tquad,turkish_plu \
 --device cuda:0 --batch_size 4 --write_out --log_samples --output_path outs
```

For more details on the usage, and explore other evaluation settings, refer to the [lm-eval-harness](/lm-evaluation-harness/) repository.

Checkout the [examples](/examples/) folder for more examples to run the all tasks with different models.

## Task Details

| Task <img width=250/> | Datasets <img width=150/> | Metrics  |
|---------------------------------------------|----------------------------------------------------|------------------------------------|
| Extractive Question Answering | [xquad](/tasks/xquad/) <br> [tquad](/tasks/tquad/) <br> [MKQA-tr](/tasks/mkqa_tr/) |  Exact Match <br> F1 |
| Multiple Choice Question Answering | [EXAMS](/tasks/exams/) <br> [Belebele](/tasks/belebele_tr/) <br> [Turkish PLU](/tasks/turkish_plu/) <br> [XCOPA](/tasks/xcopa/) | Accuracy |
| Text Classification | [IronyTR](/tasks/ironytr/) <br> [TRClaim-19](/tasks/trclaim19/) <br> [news_cat](/tasks/news_cat/) <br> [OffensEval-TR](/tasks/offenseval_tr/) <br> [STSb-TR](/tasks/sts_tr/) <br> [X-FACT](/tasks/xfact/) | Accuracy |
| Natural Language Inference | [XNLI](/tasks/nli_tr/) <br> [SNLI-tr](/tasks/nli_tr/) <br> [MNLI-tr](/tasks/nli_tr/) | Accuracy |
| Machine Translation | [wmt2016](/tasks/wmt2016/) | WER <br> BLEU |
| Summarization | [TurkishPLU](/tasks/tr_wikihow_summ/) <br> [MLSum](tasks/mlsum) <br> [XLSum](tasks/xlsum) <br> [WikiLingua](/tasks/wiki_lingua/) | ROUGE |
| Grammatical Error Correction | [gecturk](/tasks/gecturk/) | Exact Match |


## Citation
If you find Cetvel beneficial for your research, please cite it,

```bibtex
@misc{kuisai2024cetvel,
    title={Cetvel: A Unified Benchmark for Evaluating Turkish LLMs},
    author={Ilker Kesen and Mustafa Cemil Guney and Aykut Erdem and Gozde Gul Sahin},
    year={2024},
    url={https://github.com/KUIS-AI/cetvel}
}
```
