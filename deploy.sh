#!/usr/bin/env bash
# Cloudflare Pages 수동 배포 스크립트
# 사용: ./deploy.sh [commit-message]
# 요구: 이미 wrangler login 된 상태 (또는 유효한 refresh_token)

set -e

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-C:/Users/happyhouse/AppData/Roaming/xdg.config}"

MSG="${1:-manual deploy}"

echo "➤ git push origin master"
git push origin master 2>&1 | tail -5 || true

echo
echo "➤ wrangler pages deploy"
wrangler pages deploy . \
    --project-name jarvis-kanban \
    --branch master \
    --commit-dirty=true \
    --commit-message "$MSG" 2>&1 | tail -8

echo
echo "✅ https://jarvis-kanban.pages.dev/"
