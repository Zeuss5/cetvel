import evaluate


def process_results_gen(doc, results):
    rouge = evaluate.load("rouge")
    return rouge.compute(predictions=[doc["summary"]], references=results)
