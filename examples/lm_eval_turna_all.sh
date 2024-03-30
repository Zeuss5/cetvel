#!/bin/bash

#SBATCH --job-name=lm-eval-turna-all
#SBATCH --output=lm-eval-turna-all-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=64G
#SBATCH --partition=ai
#SBATCH --qos=ai
#SBATCH --account=ai
 
# for v100 and a6000 constraint and gres should be both set
# #SBATCH --gres=gpu:tesla_t4:1    
# #SBATCH --gres=gpu:tesla_v100:1
#SBATCH --gres=gpu:nvidia_a40:1
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


nvidia-smi

# Run
###############################################
echo "Run Script!!!"
echo "======================="
python -m lm_eval --model hf \
 --model_args pretrained=boun-tabi-LMG/TURNA,dtype="auto",max_length=1024 \
 --tasks belebele_tr,exams_tr,gecturk_generation,ironytr,mkqa_tr,mlsum_tr,news_cat,nli_tr,offenseval_tr,sts_tr,tquad,trclaim19,turkish_plu_prompt,tr-wikihow-summ,wiki_lingua_tr,wmt-tr-en-prompt,xcopa_tr,xfact_tr,xlsum_tr,xquad_tr \
 --batch_size 4 --write_out --log_samples \
 --device cuda:0 \
 --num_fewshot 0 \
 --output_path task_outs/turna \
 --use_cache turna \
 --verbosity DEBUG
echo "======================="
echo "Done!!"
