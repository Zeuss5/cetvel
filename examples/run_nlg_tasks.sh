#!/bin/bash
# This is an example script to demonstrate how to run LLama-3.2-1B using lm-eval-harness on the NLG tasks within the Cetvel benchmark.
# This example does not use accelerate, so it only runs on single GPU. For larger models, please see the other examples.

MODEL=${MODEL:-"meta-llama/Llama-3.2-1B"}
NLG_TASKS="gecturk,mlsum_tr,wiki_lingua_tr,wmt-tr-en-prompt,xlsum_tr,tr-wikihow-summ"

python3 -m lm_eval --model hf --include_path ./tasks/ --tasks $NLG_TASKS \
    --model_args pretrained=$MODEL \
    --gen_kwargs "num_beams=5,max_new_tokens=64" \
    --device cuda:0 \
    --batch_size 1 \
    --write_out \
    --log_samples \
    --output_path outs/nlg