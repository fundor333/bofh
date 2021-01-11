# bofh: BOFH fortunes

# Automatically generate or update BOFH's compiled fortune data file
# $0 must be used outside a local function. This variable name is unlikly to collide.
BOFH_PLUGIN_DIR=${0:h}

() {
local DIR=$BOFH_PLUGIN_DIR/fortunes
if [[ ! -f $DIR/bofh.dat ]] || [[ $DIR/bofh.dat -ot $DIR/bofh ]]; then
  # For some reason, Cygwin puts strfile in /usr/sbin, which is not on the path by default
  local strfile=strfile
  if ! which strfile &>/dev/null && [[ -f /usr/sbin/strfile ]]; then
    strfile=/usr/sbin/strfile
  fi
  if which $strfile &> /dev/null; then
    $strfile $DIR/bofh $DIR/bofh.dat >/dev/null
  else
    echo "[oh-my-zsh] bofh depends on strfile, which is not installed" >&2
    echo "[oh-my-zsh] strfile is often provided as part of the 'fortune' package" >&2
  fi
fi

# Aliases
alias bofh="fortune -a $DIR"
alias bofh_cow="bofh | cowthink"
}

unset BOFH_PLUGIN_DIR
