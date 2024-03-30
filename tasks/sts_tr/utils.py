
def doc_to_target(doc) -> int:
    if doc["score"] < 0.5:
        # no similarity
        return 0
    elif doc["score"] >= 0.5 and doc["score"] < 1.5:
        # low similarity
        return 1
    elif doc["score"] >= 1.5 and doc["score"] < 2.5:
        # medium similarity
        return 2
    elif doc["score"] >= 2.5 and doc["score"] < 3.5:
        # high similarity
        return 3
    elif doc["score"] >= 3.5 and doc["score"] < 4.5:
        # very high similarity
        return 4
    else: # doc["score"] >= 4.5
        # semantically same
        return 5
    
