#!/usr/bin/env bash

set -euo pipefail

if [[ -z "${PREVIEW_SUPPORT_BUNDLE_B64:-}" ]]; then
  printf 'preview: missing PREVIEW_SUPPORT_BUNDLE_B64\n' >&2
  exit 1
fi

printf 'Previewing contributed workflow files\n'
find .github/workflows -maxdepth 1 -name '*.yml' -print
printf 'Workflow preview completed successfully\n'
