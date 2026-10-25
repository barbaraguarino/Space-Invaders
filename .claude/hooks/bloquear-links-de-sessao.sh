#!/usr/bin/env bash
# Bloqueia commits, PRs e issues cujo texto contenha links de sessão/chat do Claude.

comando=$(jq -r '.tool_input.command // ""')

if ! grep -qE '(git commit|gh pr (create|edit|comment)|gh issue (create|edit|comment))' <<<"$comando"; then
  exit 0
fi

if grep -qiE 'claude\.ai/(code|chat|share|artifact)|/session[s]?/|#local_|session_[0-9a-z]{6,}' <<<"$comando"; then
  echo "Bloqueado: não inclua links de sessão ou chat em commits, PRs ou issues (regra do CLAUDE.md)." >&2
  exit 2
fi

exit 0
