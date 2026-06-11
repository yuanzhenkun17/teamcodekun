# VibeCoding Mini Operating System

A lightweight operating protocol for software-development vibe coding with terminal Agents.

The system keeps fast AI-assisted development under control by separating orchestration, implementation, verification, and escalation.

## Use This When

- You are building or changing software with an Agent in a codebase.
- You want fast iteration without losing engineering discipline.
- You want one CEO Agent to communicate with the human owner.
- You want Builder and Verifier Agents to work in parallel or hand off cleanly.
- You want subagents, but only with clear scope and stop conditions.

## Core Shape

```text
Human Owner
  |
  v
CEO Agent
  |----------------|
  v                v
Builder Lead       Verifier Lead
  |                |
  v                v
Subagents          Subagents
```

## Start Here

1. Read `core/principles.md`.
2. Use `roles/ceo.md` as the primary Agent prompt.
3. Give Builder and Verifier their role prompts when work is delegated.
4. Use `protocols/phase-report.md` for every CEO stage report.
5. Use `protocols/subagent-creation.md` before any Lead creates a subagent.
6. Use the checklists before delivery.

## Multiple Sessions With Git Worktrees

For three real sessions, use:

```text
Codex session: CEO
Claude Code session: Builder
Codex session: Verifier
```

Use one entry file per session:

```text
CEO session: read `sessions/ceo.md`
Builder session: read `sessions/builder.md`
Verifier session: read `sessions/verifier.md`
```

Initialize a run directory first:

```bash
./teamcodekun/scripts/init-run.sh current
```

Use `protocols/run-directory.md` as the shared message board contract. Builder is the only default product-code writer. Verifier is read-only unless CEO authorizes a fix branch.

For new projects, copy `project-template/AGENTS.md` to the project root as `AGENTS.md`.

## Directory Guide

- `core/` explains stable principles, workflow, and governance.
- `roles/` contains copy-ready Agent prompts.
- `sessions/` contains one-line entry points for CEO, Builder, and Verifier windows.
- `protocols/` contains fillable templates for reporting, handoff, escalation, and conflict resolution.
- `checklists/` contains stage gates for planning, implementation, verification, review, and delivery.
- `examples/` shows a small feature run from intake to delivery.

## First-Version Boundary

This is a manual workflow and prompt library. It intentionally does not include automation, task queues, schedulers, CLIs, or external integrations.
