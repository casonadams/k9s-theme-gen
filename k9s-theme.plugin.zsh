#!/usr/bin/env zsh

export K9S_THEME_GEN=$(dirname "${(%):-%x}")

if [ -x "$(command -v yq)" ]; then
  _YQ_PATH="$(which yq)"
else
  YQ_VERSION="v4.16.2"
  YQ_URL="https://github.com/mikefarah/yq/releases/download"

  if [ ! -f "${K9S_THEME_GEN}/yq" ]; then
    local uname="$(uname)"
    local arch="$(uname -m)"

    if [[ $arch == "x86_64" ]]; then
      curl -SL "${YQ_URL}/${YQ_VERSION}/yq_${uname}_amd64" -o "${K9S_THEME_GEN}/yq"
      chmod +x "${K9S_THEME_GEN}/yq"
    else
      echo "$arch not supported"
      echo "please install yq manually https://github.com/mikefarah/yq/releases into your PATH"
    fi
  fi
fi

[ -n "$PS1" ] \
  && [ -s "${K9S_THEME_GEN}/profile_helper.sh" ] \
  && eval "$("${K9S_THEME_GEN}/profile_helper.sh")"
