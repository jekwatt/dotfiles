# Add standard conda environment
export PATH=~/conda/envs/main/bin:~/conda/envs/unix/bin:"$PATH"

# Same as the above
# PATH=~/conda/envs/unix/bin:"$PATH"
# PATH=~/conda/envs/main/bin:"$PATH"
# export PATH

# Add my local /User/jwatt/bin to the PATH Environment variables
export PATH="/Users/jwatt/bin:$PATH"

# Add chromedriver for pytest automation
export PATH="/Users/jwatt/drivers:$PATH"

# Load .bashrc if interactive and exists
if [[ -f ~/.bashrc ]] && [[ "$PS1" ]]; then
    source ~/.bashrc
fi

# 2020-05-14: jw set up new_base_env (base_a)
# 2021-11-04: wh switched to dedicated conda environment
source ~/conda/envs/conda/etc/profile.d/conda.sh
