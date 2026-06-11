# Run Directory

Use one shared run directory per task. It is the message board for separate Codex and Claude Code sessions.

Recommended path:

```text
<absolute project path>/.vibecoding-runs/current/
```

Use an absolute path when sessions run in different worktrees. A relative `RUN_DIR` can create separate message boards in each worktree.

## Layout

```text
RUN_DIR/
  status.md
  ceo/
    plan.md
    builder-brief.md
    final-report.md
  builder/
    handoff.md
  verifier/
    report.md
```

## Ownership

- CEO writes `ceo/` and `status.md`.
- Builder writes `builder/` and product code in its assigned worktree.
- Verifier writes `verifier/`.
- All roles may read the full run directory.
- No role edits another role's report. If a report is wrong, write a correction in your own area.

## Required Status Fields

```text
Task:
Current phase:
CEO worktree:
Builder worktree:
Verifier worktree:
Builder branch:
Verifier branch:
Latest builder commit:
Builder diff command:
Latest verifier report:
Blocked by:
Next owner:
```
