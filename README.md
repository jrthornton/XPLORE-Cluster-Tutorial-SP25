# XPLORE-Cluster-Tutorial-SP25
Here are some basic steps for accessing the cluster for our XPLORE this quarter! If you have any questions email jrthorn@stanford.edu

## Basic Cluster Access
1. Set up the CISCO secure client. (Follow instructions [here](https://uit.stanford.edu/service/vpn))
2. Connect to the cluster using any SSH client and the following command `ssh <SUnet ID>@cme291-login.stanford.edu`

## Installing Anaconda
A premade batch job script for installing Conda is provided on the cluster. You can use this job script by following these instructions:
1. Connect to the cluster
2. Run the command `sbatch /opt/ohpc/pub/examples/python/build_pytorch_anaconda.slurm`. Note this will take 10-20 minutes to run
3. You now have Conda accessible while on compute nodes. Note that you may need to relaunch your terminal to access conda on the login node after the initial installation.

## Connecting to the cluster through VS Code
1. Install the Remote - SSH extension on VS Code
2. Use shift + ctrl + p to access the command palette
3. Select Remote-SSH: Connect to Host
4. Add New SSH Host (if this is the first time)
5. Input <SUnet_ID>@cme291-stanford.login.edu
6. Select Linux as the OS if prompted
7. After inputting your password you should be able to use VS Code on the cluster

## Running Jobs
For more detailed information about using Slurm for interactive and batch jobs you can visit the [Slurm documentation](https://slurm.schedmd.com/documentation.html) site to see a summary of commands and arguments see [this](https://slurm.schedmd.com/pdfs/summary.pdf) cheatsheet. 
### Interactive
Interactive jobs allocate you computing resources which you can use in an interactive console setting. You can use the `srun` command for allocating nodes for interactive jobs as follows, for GPU jobs: `srun -p gpu-pascal --pty bash`, for CPU jobs: `srun -p cpu --pty bash`. These each allocate only one GPU and CPU node respectively, if you need more nodes you can specify that with the `--nodes=N_nodes` argument.
### Batch
Batch scripts can be used to queue jobs. These scripts use the Slurm language and allow you to specify resources for your jobs. These will run until completion, error, or timeout. An example batch script is provided in this Git repository. 

## Helpful Commands
- `sinfo` - Shows the status of nodes on the cluster
- `squeue` - Lists running and queued jobs
- `scancel JobID` - Cancels currently running job associated with JobID
