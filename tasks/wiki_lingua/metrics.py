import evaluate

def rouge(predictions, references):
    return (predictions[0], references[0])

def rouge1(predictions, references):
    return rouge(predictions, references)

def rouge2(predictions, references):
    return rouge(predictions, references)

def rougeL(predictions, references):
    return rouge(predictions, references)

def rougeLsum(predictions, references):
    return rouge(predictions, references)

def agg_rouge(items, rouge_type):
    rouge_fn = evaluate.load("rouge")
    predictions, references = zip(*items)
    return rouge_fn.compute(predictions=predictions, references=references, rouge_types=[rouge_type])[rouge_type]

def agg_rouge1(items):
    return agg_rouge(items, "rouge1")

def agg_rouge2(items):
    return agg_rouge(items, "rouge2")

def agg_rougeL(items):
    return agg_rouge(items, "rougeL")

def agg_rougeLsum(items):
    return agg_rouge(items, "rougeLsum")