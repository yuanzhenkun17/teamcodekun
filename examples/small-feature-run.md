# Example: Small Feature Run

Scenario: add a `--json` output flag to an existing CLI command.

Run directory:

```text
/project/.vibecoding-runs/current
```

## 1. Intake

CEO frames the task:

```text
Goal:
- Add JSON output support to the existing status command.

Success criteria:
- Default text output stays unchanged.
- `--json` prints valid JSON.
- Existing tests still pass.
```

## 2. Plan

CEO assigns:

```text
Run directory:
- /project/.vibecoding-runs/current

Builder:
- Inspect the status command.
- Add the flag.
- Keep output logic small.
- Commit before handoff.

Verifier:
- Review the Builder commit range.
- Run existing tests.
- Add or request a JSON output test.
- Stay read-only unless CEO authorizes a fix branch.
```

## 3. Build

Builder reports:

```text
Worktree:
- /project-builder

Branch:
- vc-builder

Base commit:
- abc1234

Head commit:
- def5678

Diff command:
- git diff abc1234..def5678

Changed:
- Added `--json` flag parsing.
- Extracted status data before formatting.
- Preserved text output path.

Risk:
- Need verification that text output did not change.
```

## 4. Verify

Verifier reports:

```text
Checks:
- Existing CLI tests passed.
- New JSON output test passed.
- Manual command produced valid JSON.

Finding:
- JSON output is missing a trailing newline.

Recommendation:
- Return to Builder for a small formatting fix.
```

## 5. Review Gate

CEO decides:

```text
Decision:
- Return to Builder for a small formatting fix.

Evidence:
- Tests passed.
- Verifier checked default and JSON paths.
- Verifier found a newline formatting issue.

Residual risk:
- Low, but delivery waits for Builder fix.
```

Builder fixes and reports:

```text
Head commit:
- fed9012

Diff command:
- git diff abc1234..fed9012

Changed:
- Added missing newline after JSON output.
```

Verifier rechecks:

```text
Checks:
- Existing CLI tests passed.
- New JSON output test passed.
- Manual command produced valid JSON with trailing newline.

Recommendation:
- Deliver.
```

## 6. Deliver

CEO tells the Human Owner:

```text
Summary:
- Added JSON output support for status command.

Verification:
- Existing tests passed.
- New JSON output test passed.
- Verifier rechecked the Builder fix.

Next step:
- Consider documenting the flag in CLI help examples.
```
