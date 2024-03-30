#!/bin/bash

#SBATCH --job-name=lm-eval-trendyol-7b-all
#SBATCH --output=lm-eval-trendyol-7b-all-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=64G
#SBATCH --partition=ai
#SBATCH --qos=ai
#SBATCH --account=ai
 
# for v100 and a6000 constraint and gres should be both set
# #SBATCH --gres=gpu:tesla_t4:1    
# #SBATCH --gres=gpu:tesla_v100:1
#SBATCH --gres=gpu:nvidia_a40:4
# #SBATCH --gres=gpu:rtx_a6000:1
#SBATCH --constraint=ai

#SBATCH --time=24:0:0
#SBATCH --mail-type=END
#SBATCH --mail-user=muguney@ku.edu.tr

# Modules
###############################################

echo "======================="
echo "Loading Modules..."
module load git/2.25.0
module load cuda/11.8.0
module load cudnn/8.9.5/cuda-11.x
module load gcc/9.3.0
module load anaconda/3.21.05

# Set stack size to unlimited
echo "Setting stack size to unlimited..."
ulimit -s unlimited
ulimit -l unlimited
ulimit -a
echo

# Environment Prep
###############################################

echo "======================="
echo "Preparing environment..."
# conda activate lm-eval
source activate lm-eval2
echo "======================="

# prevent hanging
export WORLD_SIZE=4
export CUDA_VISIBLE_DEVICES=0,1,2,3
export NCCL_P2P_LEVEL=NVL

nvidia-smi

# Run
###############################################
echo "Run Script!!!"
echo "======================="
# python -m lm_eval --model hf \
accelerate launch -m lm_eval --model hf \
 --model_args pretrained=Trendyol/Trendyol-LLM-7b-base-v1.0,dtype="bfloat16",max_length=4096 \
 --tasks belebele_tr,exams_tr,gecturk_generation,ironytr,mkqa_tr,mlsum_tr,news_cat,nli_tr,offenseval_tr,sts_tr,tquad,trclaim19,turkish_plu_prompt,tr-wikihow-summ,wiki_lingua_tr,wmt-tr-en-prompt,xcopa_tr,xfact_tr,xlsum_tr,xquad_tr \
 --batch_size 1 --write_out --log_samples \
 --num_fewshot 0 \
 --output_path task_outs/trendyol_7b \
 --use_cache trendyol7b \
 --verbosity DEBUG \
 # --limit 40
 # --model_args parallelize=True \
 # --device cuda:0 \
 # --limit 10
echo "======================="
echo "Done!!"
