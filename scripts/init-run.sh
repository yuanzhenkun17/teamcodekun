#!/usr/bin/env bash
set -euo pipefail

task_name="${1:-current}"
project_root="$(pwd -P)"
run_dir="$project_root/.vibecoding-runs/$task_name"

mkdir -p "$run_dir/ceo" "$run_dir/builder" "$run_dir/verifier"
printf '%s\n' "$run_dir" > "$project_root/.vibecoding-run-path"

cat > "$run_dir/status.md" <<STATUS
Task: $task_name
Current phase: intake
CEO worktree:
Builder worktree:
Verifier worktree:
Builder branch:
Verifier branch:
Latest builder commit:
Builder diff command:
Latest verifier report:
Blocked by:
Next owner: CEO
STATUS

cat <<EOF
VibeCoding run initialized.

RUN_DIR=$run_dir

Start sessions with:
- CEO: read ./vibecoding-os/sessions/ceo.md
- Builder: read ./vibecoding-os/sessions/builder.md
- Verifier: read ./vibecoding-os/sessions/verifier.md
EOF
