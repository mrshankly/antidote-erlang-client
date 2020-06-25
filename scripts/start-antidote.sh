#!/usr/bin/env sh

set -e

cmdname="$(basename "${0}")"

usage() {
  printf "usage: %s [local]\n" "${cmdname}" 1>&2
  exit 1
}

if [ $# -eq 0 ]; then
  docker run --name antidotedb-test --rm -it -p '8087:8087' antidotedb/antidote
elif [ $# -eq 1 ] && [ "${1}" = 'local' ]; then
  docker run --name antidotedb-test-local --rm -it -p '8087:8087' antidotedb:local-build
else
  usage
fi
