# Bash Profile

# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Defaults
export PATH="/usr/local/bin:$PATH"

infocmp $TERM | sed 's/kbs=^[hH]/kbs=\177/' > $TERM.ti
tic $TERM.ti
