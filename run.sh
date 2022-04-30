#!/bin/bash
#SBATCH -A $USER
#SBATCH --account research
#SBATCH --gres=gpu:2
#SBATCH --mem-per-cpu=2048
#SBATCH --time=4-00:00:00
#SBATCH --mincpus=20
#SBATCH --mail-type=END
#SBATCH -w gnode03

python3 /scratch/adi2k/context_encoder.py

scp images ~/results/
scp ./models/gen_200.pt ~/results/
scp ./models/disc_200.pt ~/results/

