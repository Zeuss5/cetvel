# XL-Sum

### Paper

Title: `XL-Sum: Large-Scale Multilingual Abstractive Summarization for 44 Languages`

Abstract: https://arxiv.org/abs/2106.13822

Contemporary works on abstractive text summarization have focused primarily on high-resource languages like English, mostly due to the limited availability of datasets for low/mid-resource ones. In this work, we present XL-Sum, a comprehensive and diverse dataset comprising 1 million professionally annotated article-summary pairs from BBC, extracted using a set of carefully designed heuristics. The dataset covers 44 languages ranging from low to high-resource, for many of which no public dataset is currently available. XL-Sum is highly abstractive, concise, and of high quality, as indicated by human and intrinsic evaluation. We fine-tune mT5, a state-of-the-art pretrained multilingual model, with XL-Sum and experiment on multilingual and low-resource summarization tasks. XL-Sum induces competitive results compared to the ones obtained using similar monolingual datasets: we show higher than 11 ROUGE-2 scores on 10 languages we benchmark on, with some of them exceeding 15, as obtained by multilingual training. Additionally, training on low-resource languages individually also provides competitive performance. To the best of our knowledge, XL-Sum is the largest abstractive summarization dataset in terms of the number of samples collected from a single source and the number of languages covered. We are releasing our dataset and models to encourage future research on multilingual abstractive summarization.

Homepage: https://github.com/csebuetnlp/xl-sum


### Citation

```
@inproceedings{Hasan_2021,
   title={XL-Sum: Large-Scale Multilingual Abstractive Summarization for 44 Languages},
   url={http://dx.doi.org/10.18653/v1/2021.findings-acl.413},
   DOI={10.18653/v1/2021.findings-acl.413},
   booktitle={Findings of the Association for Computational Linguistics: ACL-IJCNLP 2021},
   publisher={Association for Computational Linguistics},
   author={Hasan, Tahmid and Bhattacharjee, Abhik and Islam, Md. Saiful and Mubasshir, Kazi and Li, Yuan-Fang and Kang, Yong-Bin and Rahman, M. Sohel and Shahriyar, Rifat},
   year={2021} }
```
