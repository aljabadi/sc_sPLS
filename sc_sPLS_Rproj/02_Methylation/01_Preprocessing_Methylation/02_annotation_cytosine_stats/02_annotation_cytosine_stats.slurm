#!/bin/bash

## ssh ajabadi@spartan.hpc.unimelb.edu.au
## cd /data/cephfs/punim0613/AL/sc_sPLS/sc_sPLS_Rproj/02_Methylation/01_Preprocessing_Methylation/02_annotation_cytosine_stats
## sbatch 02_annotation_cytosine_stats.slurm
## squeue --job 7883870

## rsync -auvz --exclude='**/.*' --progress ajabadi@spartan.hpc.unimelb.edu.au:/data/cephfs/punim0613/AL/sc_sPLS/sc_sPLS_Rproj/02_Methylation/01_Preprocessing_Methylation/03_call-contexts-and-sample-stats/ ~/Documents/_Projects/sc_sPLS/sc_sPLS_Rproj/02_Methylation/01_Preprocessing_Methylation/03_call-contexts-and-sample-stats/

# To give your job a name
#SBATCH --job-name=02_annotation_cytosine_stats

# For R need to run on 4 CPUs
#SBATCH --ntasks=2
##SBATCH --mem 8000

# set your walltime=hours:minutes:seconds
#SBATCH -t 00:30:00

# Specify your email address to be notified of progress.
#SBATCH --mail-user=aljaabadi@gmail.com
#SBATCH --mail-type=ALL

# Load the environment variables for R
module load pandoc/2.0.3
module load R/3.5.2-spartan_gcc-6.2.0

# The command to actually run the job
R --vanilla < 02_annotation_cytosine_stats_render.R
