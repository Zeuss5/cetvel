# Turkish PLU

### Paper

Title: `Benchmarking Procedural Language Understanding for Low-Resource Languages: A Case Study on Turkish`

Abstract: https://arxiv.org/abs/2309.06698

Understanding procedural natural language (e.g., step-by-step instructions) is a crucial step to execution and planning. However, while there are ample corpora and downstream tasks available in English, the field lacks such resources for most languages. To address this gap, we conduct a case study on Turkish procedural texts. We first expand the number of tutorials in Turkish wikiHow from 2,000 to 52,000 using automated translation tools, where the translation quality and loyalty to the original meaning are validated by a team of experts on a random set. Then, we generate several downstream tasks on the corpus, such as linking actions, goal inference, and summarization. To tackle these tasks, we implement strong baseline models via fine-tuning large language-specific models such as TR-BART and BERTurk, as well as multilingual models such as mBART, mT5, and XLM. We find that language-specific models consistently outperform their multilingual models by a significant margin across most procedural language understanding (PLU) tasks.

Homepage: https://github.com/GGLAB-KU/turkish-plu


### Citation

```
@article{uzunouglu2023benchmarking,
  title={Benchmarking Procedural Language Understanding for Low-Resource Languages: A Case Study on Turkish},
  author={Uzuno{\u{g}}lu, Arda and {\c{S}}ahin, G{\"o}zde G{\"u}l},
  journal={arXiv preprint arXiv:2309.06698},
  year={2023}
}
```
