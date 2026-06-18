#!/usr/bin/env bash
# Aggiorna metadati profilo GitHub (bio, blog, location) — non il README
set -euo pipefail

gh api -X PATCH user \
  -f name='Agostino De Angelis' \
  -f company='Integration Catalyst · IP & Data Strategy' \
  -f location='Puglia, Italy' \
  -f blog='https://agostinodeangelis.com' \
  -f bio='Integration Catalyst: private RAG, patent intelligence, IP valuation. Builder of insure-genius & genius.finance. Puglia, EU.'

echo "✅ Profilo GitHub aggiornato"
gh api user --jq '{name, bio, blog, location, company}'
