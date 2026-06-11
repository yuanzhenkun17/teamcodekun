# teamcodekun

`teamcodekun` is a small operating protocol for three AI coding sessions:

```text
Human Owner -> CEO -> Builder -> Verifier -> CEO -> Human Owner
```

It is a manual workflow. It does not start Agents, schedule tasks, or replace the coding tools.

## Start

Initialize one shared run directory from the project root:

```bash
./teamcodekun/scripts/init-run.sh current
```

Then start three sessions:

```text
CEO:      read ./teamcodekun/sessions/ceo.md
Builder:  read ./teamcodekun/sessions/builder.md
Verifier: read ./teamcodekun/sessions/verifier.md
```

## Communication

The sessions communicate through:

```text
.teamcodekun-runs/current/
  status.md
  ceo/
  builder/
  verifier/
  log/
.teamcodekun-run-path
```

- `ceo/`, `builder/`, and `verifier/` hold the latest role outputs.
- `log/` preserves timestamped communication history.
- `status.md` records the current phase and next owner.

## Roles

- CEO talks to the Human Owner, plans, assigns, and decides.
- Builder writes product code and hands off implementation evidence.
- Verifier checks the Builder output and reports risk.

## Directory Guide

- `sessions/`: entry prompts for each window.
- `roles/`: detailed role rules.
- `protocols/`: shared file formats and handoff rules.
- `checklists/`: compact quality gates.
- `core/`: principles, workflow, and governance.
- `scripts/`: local setup scripts.
- `project-template/`: optional `AGENTS.md` for new projects.
