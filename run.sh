#!/usr/bin/env bash
set -uo pipefail
LOG=run.log
ts(){ date -u +%Y-%m-%dT%H:%M:%SZ; }
echo "[$(ts)] POST https://api.higgsfield.ai/higgsfield/genjutsu/restyle/v1.0 (480p, preset c2143317-f28d-4c3c-a0b8-39bd547e08a7 Cel-Shaded CG Anime)" | tee -a $LOG
RESP=$(curl -sS -X POST https://api.higgsfield.ai/higgsfield/genjutsu/restyle/v1.0 \
  -H "Authorization: Key $shayan_higgsfield_key" -H "Content-Type: application/json" \
  -d '{"video_url":"https://d3snorpfx4xhv8.cloudfront.net/a4086dbb-d386-4bab-8efd-636d1f91e38e/59dac11e-bd99-4bc7-a627-2638e7ad9840.mp4","preset_id":"c2143317-f28d-4c3c-a0b8-39bd547e08a7","image_urls":[],"prompt":"Preserve the original movement and camera composition.","resolution":"480p"}')
echo "[$(ts)] submit response: $RESP" | tee -a $LOG
STATUS_URL=$(echo "$RESP" | python3 -c "import json,sys; print(json.load(sys.stdin)['status_url'])") || exit 1
last=""
for i in $(seq 1 120); do
  R=$(curl -sS "$STATUS_URL" -H "Authorization: Key $shayan_higgsfield_key")
  s=$(echo "$R" | python3 -c "import json,sys; print(json.load(sys.stdin).get('status'))" 2>/dev/null)
  if [ "$s" != "$last" ]; then echo "[$(ts)] status=$s $R" | tee -a $LOG; last=$s; fi
  case "$s" in completed|failed|nsfw|canceled) break;; esac
  sleep 10
done
echo "$R" > final.json
