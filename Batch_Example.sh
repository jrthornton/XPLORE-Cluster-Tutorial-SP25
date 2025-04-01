#!/bin/bash
#SBATCH --job-name=my-job-name         # Name of the job
#SBATCH --partition=gpu-pascal         # Partition (queue) to use
#SBATCH --nodes=1                      # Number of nodes
#SBATCH --gres=gpu:1                   # Request 1 GPU
#SBATCH --cpus-per-task=4              # Number of CPUs
#SBATCH --mem=32G                      # Memory
#SBATCH --time=01:00:00                # Max run time (hh:mm:ss)
#SBATCH --mail-type=END,FAIL           # Email notifications for job end and failure
#SBATCH --mail-user=jrthorn@stanford.edu # Replace with your email

# Activate your conda environment
source activate Example_Env

# Run your job (example: Python script)
python Example.py