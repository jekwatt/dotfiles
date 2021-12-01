export PATH=/opt/local/bin:"$PATH"

# 2018-02-09: Disabled after install of anaconda3
# added by Miniconda3 4.3.11 installer
# export PATH="/usr/local/miniconda3/bin:$PATH"

# added by Anaconda3 5.0.1 installer
# export PATH="/Users/jwatt/anaconda3/bin:$PATH"  # commented out by conda initialize

# Add my local /User/jwatt/bin to the PATH Environment variables
export PATH="/Users/jwatt/bin:$PATH"

# Add chromedriver for pytest automation
export PATH="/Users/jwatt/drivers:$PATH"

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/jwatt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/jwatt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/jwatt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/jwatt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

# 2020-01-02: Walker: Set up new conda ecosystem inside ~/conda
# source ~/conda/envs/miniconda3/bin/activate
# conda deactivate  # protect miniconda3 environment from change
# conda activate anaconda3
# Load .bashrc if interactive and exists
if [[ -f ~/.bashrc ]] && [[ "$PS1" ]]; then
    source ~/.bashrc
fi

# 2020-05-14: jw set up new_base_env (base_a)
source ~/conda/base/etc/profile.d/conda.sh
conda activate base

