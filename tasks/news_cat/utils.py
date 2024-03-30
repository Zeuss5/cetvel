from sklearn.metrics import f1_score


def doc_to_target(doc) -> int:
    choices = {
        "sport": 0,
        "magazine": 1,
        "politics": 2,
        "health": 3,
        "economy": 4
    }
    return choices[doc["label"]]


def macro_f1_score(items):
    unzipped_list = list(zip(*items))
    golds = unzipped_list[0]
    preds = unzipped_list[1]
    fscore = f1_score(golds, preds, average="macro")
    return fscore