# GECTurk

### Paper

Title: `GECTurk: Grammatical Error Correction and Detection Dataset for Turkish`

Abstract: https://arxiv.org/abs/2309.11346

Grammatical Error Detection and Correction (GEC) tools have proven useful for native speakers and second language learners. Developing such tools requires a large amount of parallel, annotated data, which is unavailable for most languages. Synthetic data generation is a common practice to overcome the scarcity of such data. However, it is not straightforward for morphologically rich languages like Turkish due to complex writing rules that require phonological, morphological, and syntactic information. In this work, we present a flexible and extensible synthetic data generation pipeline for Turkish covering more than 20 expert-curated grammar and spelling rules (a.k.a., writing rules) implemented through complex transformation functions. Using this pipeline, we derive 130,000 high-quality parallel sentences from professionally edited articles. Additionally, we create a more realistic test set by manually annotating a set of movie reviews. We implement three baselines formulating the task as i) neural machine translation, ii) sequence tagging, and iii) prefix tuning with a pretrained decoder-only model, achieving strong results. Furthermore, we perform exhaustive experiments on out-of-domain datasets to gain insights on the transferability and robustness of the proposed approaches. Our results suggest that our corpus, GECTurk, is high-quality and allows knowledge transfer for the out-of-domain setting. To encourage further research on Turkish GEC, we release our datasets, baseline models, and the synthetic data generation pipeline at the following URL: 

Homepage: https://github.com/GGLAB-KU/gecturk


### Citation

```
@inproceedings{kara-etal-2023-gecturk,
    title = "{GECT}urk: Grammatical Error Correction and Detection Dataset for {T}urkish",
    author = {Kara, Atakan  and
      Marouf Sofian, Farrin  and
      Bond, Andrew  and
      {\c{S}}ahin, G{\"o}zde},
    editor = "Park, Jong C.  and
      Arase, Yuki  and
      Hu, Baotian  and
      Lu, Wei  and
      Wijaya, Derry  and
      Purwarianti, Ayu  and
      Krisnadhi, Adila Alfa",
    booktitle = "Findings of the Association for Computational Linguistics: IJCNLP-AACL 2023 (Findings)",
    month = nov,
    year = "2023",
    address = "Nusa Dua, Bali",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2023.findings-ijcnlp.26",
    doi = "10.18653/v1/2023.findings-ijcnlp.26",
    pages = "278--290",
}
```
