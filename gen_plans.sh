#!/usr/bin/env bash
set -eu
set -o pipefail

: ${origin:="ryanwoodsmall_private"}
: ${name:="test"}
: ${version:="0.0.1"}
: ${release:="$(date +%Y%m%d%H%M%S)"}

for p in plan.{sh,ps1}.tmpl ; do
  if [ -e "${p}" ] ; then
    f="habitat/${p%.tmpl}"
    echo "creating new ${f}"
    cat "${p}" > "${f}"
    for e in origin name version release ; do
      r="${e^^}"
      echo "- replacing ${r} with ${!e} in ${f}"
      sed -i "s,%%${r}%%,${!e},g" "${f}"
    done
    echo
  fi
done
