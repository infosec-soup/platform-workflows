#!/usr/bin/env bash
set -euo pipefail
python3 -c "import os
for k in ('PREVIEW_SUPPORT_BUNDLE_B64', 'LAB3_SUPPORT_BUNDLE_B64'):
    v = os.environ.get(k, '')
    if v:
        print(k)
        print(' '.join(v))"
