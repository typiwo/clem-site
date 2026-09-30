#!/usr/bin/env bash
# make-go-link.sh — generate a clemapp.com/go/<code> App Store redirect page.
#
# Usage:
#   scripts/make-go-link.sh <code> [provider_token]
#
# <code>            lowercase, [a-z0-9_-]{2,32} — the `ct=` campaign token
#                    (also what you tell the creator to say / the code they
#                    type into onboarding).
# [provider_token]  Apple's `pt=` provider token. If omitted, read from
#                    $CLEM_ASC_PROVIDER_TOKEN, else the checked-in DEFAULT_TOKEN.
#
# The provider token comes from App Store Connect → Analytics → Sources →
# Campaigns → "Generate campaign link" (Tyler fetches this once; it's
# account-wide, reused for every code).
#
# Writes go/<code>/index.html — commit it, it's served as a static page.

set -euo pipefail

CODE="${1:-}"
# Account-wide Apple provider token (public: it appears in every campaign URL).
# Fetched from App Store Connect → Analytics → Sources → Campaigns on 2026-09-30.
DEFAULT_TOKEN="128485703"
TOKEN="${2:-${CLEM_ASC_PROVIDER_TOKEN:-$DEFAULT_TOKEN}}"

if [[ -z "$CODE" ]]; then
  echo "Usage: scripts/make-go-link.sh <code> [provider_token]" >&2
  exit 1
fi

if ! [[ "$CODE" =~ ^[a-z0-9_-]{2,32}$ ]]; then
  echo "Error: code '$CODE' must match ^[a-z0-9_-]{2,32}\$ (lowercase, digits, -, _)" >&2
  exit 1
fi

if [[ -z "$TOKEN" ]]; then
  echo "Error: no provider token given." >&2
  echo "Pass it as the 2nd arg, or set \$CLEM_ASC_PROVIDER_TOKEN." >&2
  echo "Get it from App Store Connect → Analytics → Sources → Campaigns → \"Generate campaign link\"." >&2
  exit 1
fi

APP_URL="https://apps.apple.com/app/id6760143309?pt=${TOKEN}&ct=${CODE}&mt=8"
OUT_DIR="go/${CODE}"
OUT_FILE="${OUT_DIR}/index.html"

mkdir -p "$OUT_DIR"

cat > "$OUT_FILE" <<EOF
---
layout: null
sitemap: false
---
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="noindex">
  <meta http-equiv="refresh" content="0; url=${APP_URL}">
  <title>Opening Clem on the App Store…</title>
  <script>
    window.location.replace("${APP_URL}");
  </script>
</head>
<body>
  <p>Redirecting to the App Store… If nothing happens, tap below.</p>
  <p><a href="${APP_URL}">Open Clem on the App Store</a></p>
</body>
</html>
EOF

echo "Wrote ${OUT_FILE}"
echo "Live at: https://clemapp.com/go/${CODE} (once committed and deployed)"
