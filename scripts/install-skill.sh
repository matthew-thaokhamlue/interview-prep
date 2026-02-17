#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage:
  scripts/install-skill.sh [claude|codex|both] [--force]

Description:
  Installs skills/interview-prep-portable to local Claude and/or Codex skills directories.

Defaults:
  target = both

Examples:
  scripts/install-skill.sh
  scripts/install-skill.sh claude
  scripts/install-skill.sh codex --force
USAGE
}

TARGET="both"
FORCE="false"

for arg in "$@"; do
  case "$arg" in
    claude|codex|both)
      TARGET="$arg"
      ;;
    --force)
      FORCE="true"
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Error: Unknown argument '$arg'" >&2
      usage >&2
      exit 1
      ;;
  esac
done

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SKILL_NAME="interview-prep-portable"
SOURCE_DIR="$REPO_ROOT/skills/$SKILL_NAME"

if [[ ! -d "$SOURCE_DIR" ]]; then
  echo "Error: Skill source not found: $SOURCE_DIR" >&2
  exit 1
fi

install_to() {
  local base_dir="$1"
  local target_dir="$base_dir/$SKILL_NAME"

  mkdir -p "$base_dir"

  if [[ -e "$target_dir" ]]; then
    if [[ "$FORCE" != "true" ]]; then
      echo "Skipping existing: $target_dir"
      echo "  Re-run with --force to overwrite."
      return
    fi
    rm -rf "$target_dir"
  fi

  cp -R "$SOURCE_DIR" "$target_dir"
  echo "Installed: $target_dir"
}

case "$TARGET" in
  claude)
    install_to "$HOME/.claude/skills"
    ;;
  codex)
    install_to "$HOME/.agents/skills"
    ;;
  both)
    install_to "$HOME/.claude/skills"
    install_to "$HOME/.agents/skills"
    ;;
esac
