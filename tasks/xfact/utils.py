
def doc_to_target(doc) -> int:
    if doc["label"] == "true":
        return 0
    elif doc["label"] == "false":
        return 1
    elif doc["label"] == "complicated/hard to categorise":
        return 2
    else: # "partly true/misleading"
        return 3