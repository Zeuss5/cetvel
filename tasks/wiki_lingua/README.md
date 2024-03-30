# WikiLingua

### Paper

Title: `WikiLingua: A New Benchmark Dataset for Cross-Lingual Abstractive Summarization`

Abstract: https://aclanthology.org/2020.findings-emnlp.360/

We introduce WikiLingua, a large-scale, multilingual dataset for the evaluation of cross-lingual abstractive summarization systems. We extract article and summary pairs in 18 languages from WikiHow, a high quality, collaborative resource of how-to guides on a diverse set of topics written by human authors. We create gold-standard article-summary alignments across languages by aligning the images that are used to describe each how-to step in an article. As a set of baselines for further studies, we evaluate the performance of existing cross-lingual abstractive summarization methods on our dataset. We further propose a method for direct cross-lingual summarization (i.e., without requiring translation at inference time) by leveraging synthetic data and Neural Machine Translation as a pre-training step. Our method significantly outperforms the baseline approaches, while being more cost efficient during inference.

Homepage: https://github.com/esdurmus/Wikilingua


### Citation

```
@inproceedings{ladhak-etal-2020-wikilingua,
    title = "{W}iki{L}ingua: A New Benchmark Dataset for Cross-Lingual Abstractive Summarization",
    author = "Ladhak, Faisal  and
      Durmus, Esin  and
      Cardie, Claire  and
      McKeown, Kathleen",
    editor = "Cohn, Trevor  and
      He, Yulan  and
      Liu, Yang",
    booktitle = "Findings of the Association for Computational Linguistics: EMNLP 2020",
    month = nov,
    year = "2020",
    address = "Online",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2020.findings-emnlp.360",
    doi = "10.18653/v1/2020.findings-emnlp.360",
    pages = "4034--4048",
    abstract = "We introduce WikiLingua, a large-scale, multilingual dataset for the evaluation of cross-lingual abstractive summarization systems. We extract article and summary pairs in 18 languages from WikiHow, a high quality, collaborative resource of how-to guides on a diverse set of topics written by human authors. We create gold-standard article-summary alignments across languages by aligning the images that are used to describe each how-to step in an article. As a set of baselines for further studies, we evaluate the performance of existing cross-lingual abstractive summarization methods on our dataset. We further propose a method for direct cross-lingual summarization (i.e., without requiring translation at inference time) by leveraging synthetic data and Neural Machine Translation as a pre-training step. Our method significantly outperforms the baseline approaches, while being more cost efficient during inference.",
}
```
