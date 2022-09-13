#!/usr/bin/env bash

# set -euo pipefail
set -e

# Internal Field Separator
IFS=$'\n\t'

if [[ -z "$ENV_VAR" ]]; then
  echo -e "No value has currently been set for ENV_VAR"
fi
