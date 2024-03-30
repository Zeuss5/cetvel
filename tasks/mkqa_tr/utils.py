from ast import literal_eval
import transformers.data.metrics.squad_metrics as squad_metrics


def doc_to_target(doc):
    # convert str to list
    return literal_eval(doc.get("answers"))


# def em(gold_list, pred):
#     # tests for exact match and on the normalised answer (compute_exact)
#     em_sum = 0.0
#     if len(gold_list) > 1:
#         for i in range(len(gold_list)):
#             gold_answers = gold_list[0:i] + gold_list[i + 1 :]
#             # predictions compared against (n) golds and take maximum
#             em_sum += max(squad_metrics.compute_exact(a, pred) for a in gold_answers)
#     else:
#         em_sum += max(squad_metrics.compute_exact(a, pred) for a in gold_list)
# 
#     return em_sum / max(1, len(gold_list))


def compute_scores(gold_list, pred):
    return {
        "em": max(squad_metrics.compute_exact(a, pred) for a in gold_list),
        "f1": max(squad_metrics.compute_f1(a, pred) for a in gold_list)
    }


def process_results(doc, results):

    gold_list = doc_to_target(doc)
    pred = results[0].strip().split("\n")[0]

    scores = compute_scores(gold_list, pred)
    return scores
