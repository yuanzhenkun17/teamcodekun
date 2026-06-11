# Logging

Use `RUN_DIR/log/` to preserve communication history.

Latest-state files are overwritten as the task moves forward. Log files are append-only history.

## Rule

Whenever you write one of these files:

```text
RUN_DIR/ceo/plan.md
RUN_DIR/ceo/builder-brief.md
RUN_DIR/builder/handoff.md
RUN_DIR/verifier/report.md
RUN_DIR/ceo/final-report.md
```

also write a copy to:

```text
RUN_DIR/log/<timestamp>-<role>-<event>.md
```

Use local time:

```text
YYYYMMDD-HHMMSS
```

Shell command:

```bash
date +%Y%m%d-%H%M%S
```

## Names

Use these event names:

```text
ceo-plan
ceo-builder-brief
builder-handoff
verifier-report
ceo-final-report
```

Examples:

```text
RUN_DIR/log/20260611-143012-ceo-builder-brief.md
RUN_DIR/log/20260611-151822-builder-handoff.md
RUN_DIR/log/20260611-160004-verifier-report.md
```

Do not edit old log files. If something is wrong, write a new log file with the correction.
