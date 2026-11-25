#!/usr/bin/env bash
# Usage: sources.sh [install]   Shows what research sources are reachable from this environment.
export PATH="$PATH:$HOME/.local/bin"
if [ "${1:-}" = install ]; then
  command -v uv >/dev/null || { echo "uv not found" >&2; exit 1; }
  uv tool install https://github.com/Panniantong/Agent-Reach/releases/latest/download/agent-reach.zip && agent-reach setup >/dev/null && echo "agent-reach installed"
  exit
fi
command -v agent-reach >/dev/null && echo "agent-reach: installed ($(agent-reach version | grep -o '"version": "[^"]*"'))" || echo "agent-reach: not installed (run: sources.sh install)"
for h in github.com reddit.com x.com instagram.com linkedin.com youtube.com; do
  code=$(curl -s -o /dev/null -m 8 -w '%{http_code}' "https://$h" 2>/dev/null)
  [ "$code" = 000 ] && echo "$h: BLOCKED" || echo "$h: reachable (HTTP $code)"
done
echo "Note: reachable is not logged-in. Reddit/X/Instagram/LinkedIn via agent-reach also need a login."
