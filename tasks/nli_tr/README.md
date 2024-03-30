# Turkish NLI Tasks

### Papers

Title: `XNLI: Evaluating Cross-lingual Sentence Representations`

Abstract: https://arxiv.org/abs/1809.05053

State-of-the-art natural language processing systems rely on supervision in the form of annotated data to learn competent models. These models are generally trained on data in a single language (usually English), and cannot be directly used beyond that language. Since collecting data in every language is not realistic, there has been a growing interest in cross-lingual language understanding (XLU) and low-resource cross-language transfer. In this work, we construct an evaluation set for XLU by extending the development and test sets of the Multi-Genre Natural Language Inference Corpus (MultiNLI) to 15 languages, including low-resource languages such as Swahili and Urdu. We hope that our dataset, dubbed XNLI, will catalyze research in cross-lingual sentence understanding by providing an informative standard evaluation task. In addition, we provide several baselines for multilingual sentence understanding, including two based on machine translation systems, and two that use parallel data to train aligned multilingual bag-of-words and LSTM encoders. We find that XNLI represents a practical and challenging evaluation suite, and that directly translating the test data yields the best performance among available baselines. 

Homepage: https://github.com/facebookresearch/XNLI

---

Title: `Data and Representation for Turkish Natural Language Inference`

Paper Link: https://aclanthology.org/2020.emnlp-main.662/

Large annotated datasets in NLP are overwhelmingly in English. This is an obstacle to progress in other languages. Unfortunately, obtaining new annotated resources for each task in each language would be prohibitively expensive. At the same time, commercial machine translation systems are now robust. Can we leverage these systems to translate English-language datasets automatically? In this paper, we offer a positive response for natural language inference (NLI) in Turkish. We translated two large English NLI datasets into Turkish and had a team of experts validate their translation quality and fidelity to the original labels. Using these datasets, we address core issues of representation for Turkish NLI. We find that in-language embeddings are essential and that morphological parsing can be avoided where the training set is large. Finally, we show that models trained on our machine-translated datasets are successful on human-translated evaluation sets. We share all code, models, and data publicly.

Homepage: https://github.com/boun-tabi/NLI-TR


### Citations

```
@InProceedings{conneau2018xnli,
  author = "Conneau, Alexis
        and Rinott, Ruty
        and Lample, Guillaume
        and Williams, Adina
        and Bowman, Samuel R.
        and Schwenk, Holger
        and Stoyanov, Veselin",
  title = "XNLI: Evaluating Cross-lingual Sentence Representations",
  booktitle = "Proceedings of the 2018 Conference on Empirical Methods
               in Natural Language Processing",
  year = "2018",
  publisher = "Association for Computational Linguistics",
  location = "Brussels, Belgium",
}

@inproceedings{budur-etal-2020-data,
    title = "Data and Representation for Turkish Natural Language Inference",
    author = "Budur, Emrah and
      \"{O}z\c{c}elik, R{\i}za and
      G\"{u}ng\"{o}r, Tunga",
    booktitle = "Proceedings of the 2020 Conference on Empirical Methods in Natural Language Processing",
    month = nov,
    year = "2020",
    address = "Online",
    publisher = "Association for Computational Linguistics"
}
```

### Groups and Tasks

#### Groups

* `nli_tr`

#### Tasks
* `xnli_tr`
* `mnli_tr`
* `snli_tr`
