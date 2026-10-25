#!/usr/bin/env bash
# install.sh — Install the USL Academy Build Loop skills into Claude Code.
#
# By default, symlinks each skill into ~/.claude/skills/. Re-run safely;
# existing entries are detected and you'll be prompted before they're replaced.
#
# Usage:
#   ./install.sh                  # symlink into ~/.claude/skills/
#   ./install.sh --copy           # hard-copy instead of symlink
#   ./install.sh --project PATH   # install into PATH/.claude/skills/
#   ./install.sh --uninstall      # remove installed skills
#   ./install.sh --dry-run        # show what would happen, change nothing
#   ./install.sh --force          # overwrite without prompting
#   ./install.sh -h | --help

set -euo pipefail

SKILLS=(build-loop expertise-map problem-validation buyer-conversations solution-mvp business-model offer-design brand-strategy landing-page prd-generation build-sequence mcp-integration)


REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_BASE="${HOME}/.claude"
MODE="symlink"   # symlink | copy
ACTION="install" # install | uninstall
DRY_RUN=0
FORCE=0

usage() {
  sed -n '2,14p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --copy)      MODE="copy"; shift ;;
    --project)   TARGET_BASE="${2%/}/.claude"; shift 2 ;;
    --uninstall) ACTION="uninstall"; shift ;;
    --dry-run)   DRY_RUN=1; shift ;;
    --force)     FORCE=1; shift ;;
    -h|--help)   usage; exit 0 ;;
    *) echo "unknown flag: $1" >&2; usage; exit 2 ;;
  esac
done

SKILLS_DIR="${TARGET_BASE}/skills"

say() { printf '%s\n' "$*"; }
run() {
  if [[ $DRY_RUN -eq 1 ]]; then
    printf '  [dry-run] %s\n' "$*"
  else
    eval "$@"
  fi
}

confirm_replace() {
  local path="$1"
  [[ $FORCE -eq 1 ]] && return 0
  [[ $DRY_RUN -eq 1 ]] && return 0
  printf '  exists: %s — replace? [y/N] ' "$path"
  local ans; read -r ans </dev/tty || ans=""
  [[ "$ans" =~ ^[yY]$ ]]
}

install_one() {
  local name="$1"
  local src="${REPO_ROOT}/${name}"
  local dst="${SKILLS_DIR}/${name}"

  if [[ ! -e "$src" ]]; then
    say "  skip: ${name} (not found in repo at ${src})"
    return
  fi

  if [[ -e "$dst" || -L "$dst" ]]; then
    if ! confirm_replace "$dst"; then
      say "  kept: ${dst}"
      return
    fi
    run "rm -rf '$dst'"
  fi

  if [[ "$MODE" == "symlink" ]]; then
    run "ln -s '$src' '$dst'"
    say "  linked: ${dst} -> ${src}"
  else
    run "cp -R '$src' '$dst'"
    say "  copied: ${src} -> ${dst}"
  fi
}

uninstall_one() {
  local name="$1"
  local dst="${SKILLS_DIR}/${name}"
  if [[ -e "$dst" || -L "$dst" ]]; then
    run "rm -rf '$dst'"
    say "  removed: ${dst}"
  else
    say "  absent:  ${dst}"
  fi
}


say "USL Academy Build Loop — ${ACTION} (${MODE}) into ${SKILLS_DIR}"
[[ $DRY_RUN -eq 1 ]] && say "  (dry-run: no changes will be made)"


run "mkdir -p '${SKILLS_DIR}'"


if [[ "$ACTION" == "install" ]]; then
  for name in "${SKILLS[@]}"; do install_one "$name"; done
  say
  say "Done. Open Claude Code and run /build-loop to start (it guides the whole eight-stage pipeline). Or run any single stage like /problem-validation directly."
else
  for name in "${SKILLS[@]}"; do uninstall_one "$name"; done
  say
  say "Uninstall complete."
fi
