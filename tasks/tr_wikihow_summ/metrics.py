import evaluate


def rouge(predictions, references):
    rouge_fn = evaluate.load("rouge")
    print("evaluating rouge")
    return rouge_fn.compute(predictions=predictions, references=references)
