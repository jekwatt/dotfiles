export PATH=/opt/local/bin:"$PATH"


# Add my local /User/jwatt/bin to the PATH Environment variables
export PATH="/Users/jwatt/bin:$PATH"

# Add chromedriver for pytest automation
export PATH="/Users/jwatt/drivers:$PATH"

# Load .bashrc if interactive and exists
if [[ -f ~/.bashrc ]] && [[ "$PS1" ]]; then
    source ~/.bashrc
fi

# 2020-05-14: jw set up new_base_env (base_a)
source ~/conda/base/etc/profile.d/conda.sh
conda activate base

