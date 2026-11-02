# Genjutsu Restyle live run (no secrets)

- Endpoint: `POST https://api.higgsfield.ai/higgsfield/genjutsu/restyle/v1.0`
- Body: `{"video_url":"https://d3snorpfx4xhv8.cloudfront.net/a4086dbb-d386-4bab-8efd-636d1f91e38e/59dac11e-bd99-4bc7-a627-2638e7ad9840.mp4","preset_id":"c2143317-f28d-4c3c-a0b8-39bd547e08a7","image_urls":[],"prompt":"Preserve the original movement and camera composition.","resolution":"480p"}`
- Auth: `Authorization: Key $shayan_higgsfield_key` (value redacted)
- Poll interval: 10 s

## Raw log
```
[2026-11-02T00:44:08Z] POST https://api.higgsfield.ai/higgsfield/genjutsu/restyle/v1.0 (480p, preset c2143317-f28d-4c3c-a0b8-39bd547e08a7 Cel-Shaded CG Anime)
[2026-11-02T00:44:08Z] submit response: {"status":"queued","request_id":"01a199b6-ad6f-7e60-b660-694370322e2e","status_url":"https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/status","cancel_url":"https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/cancel","expires_after":604800}
[2026-11-02T00:44:08Z] status=queued {"status":"queued","request_id":"01a199b6-ad6f-7e60-b660-694370322e2e","status_url":"https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/status","cancel_url":"https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/cancel"}
[2026-11-02T00:44:19Z] status=in_progress {"status":"in_progress","request_id":"01a199b6-ad6f-7e60-b660-694370322e2e","status_url":"https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/status","cancel_url":"https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/cancel"}
[2026-11-02T00:51:02Z] status=completed {"status":"completed","request_id":"01a199b6-ad6f-7e60-b660-694370322e2e","status_url":"https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/status","cancel_url":"https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/cancel","expires_at":"2026-11-09T00:50:56.336883+00:00","video":{"url":"https://d3u0tzju9qaucj.cloudfront.net/a4086dbb-d386-4bab-8efd-636d1f91e38e/01a199b6-ad6f-7e60-b660-694370322e2e/ee785ec4-0b44-4d9c-9237-f65eda27885e.mp4"}}
```

## Terminal response
```json
{
    "status": "completed",
    "request_id": "01a199b6-ad6f-7e60-b660-694370322e2e",
    "status_url": "https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/status",
    "cancel_url": "https://api.higgsfield.ai/requests/01a199b6-ad6f-7e60-b660-694370322e2e/cancel",
    "expires_at": "2026-11-09T00:50:56.336883+00:00",
    "video": {
        "url": "https://d3u0tzju9qaucj.cloudfront.net/a4086dbb-d386-4bab-8efd-636d1f91e38e/01a199b6-ad6f-7e60-b660-694370322e2e/ee785ec4-0b44-4d9c-9237-f65eda27885e.mp4"
    }
}
```
