#!/bin/bash
# This is an example script to demonstrate how to run LLama-3.2-1B using lm-eval-harness on the NLU tasks within the Cetvel benchmark.
# This example does not use accelerate, so it only runs on single GPU. For larger models, please see the other examples.

MODEL=${MODEL:-"meta-llama/Llama-3.2-1B"}
NLU_TASKS="belebele_tr,ironytr,mkqa_tr,news_cat,nli_tr,offenseval_tr,sts_tr,tquad,trclaim19,turkish_plu,xcopa_tr,xfact_tr,xquad_tr"

python3 -m lm_eval --model hf --include_path ./tasks/ --tasks $NLU_TASKS \
    --model_args pretrained=$MODEL \
    --device cuda:0 \
    --batch_size 4 \
    --write_out \
    --log_samples \
    --output_path outs/nlu