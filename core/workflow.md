# Workflow

Every development task moves through six stages.

## 1. Intake

CEO clarifies the goal, scope, constraints, success criteria, risks, and approval needs.

Output: a short task frame.

## 2. Plan

CEO decomposes the task and assigns Builder and Verifier responsibilities.

Output: a plan report to the Human Owner and a Builder brief in the run directory.

## 3. Build

Builder implements in small steps and may create scoped subagents.

Output: implementation handoff with branch, base commit, head commit, changed files, and verification request.

## 4. Verify

Verifier reviews diffs, runs checks, tests edge cases, and may fix small deterministic issues.

Output: verification report. In worktree mode, Verifier stays read-only unless CEO authorizes a fix branch.

## 5. Review Gate

CEO compares build results, verification evidence, risks, and conflicts.

Output: CEO decision to deliver, return to build, return to plan, or escalate.

## 6. Deliver

CEO reports final changes, verification, residual risk, usage notes, and next steps.

Output: delivery report.

## Loop Rules

- Requirement errors return to Intake.
- Design errors return to Plan.
- Implementation errors return to Build.
- Verification gaps return to Verify.
- Coordination errors require a cleaned handoff before work continues.
- Missing branch, commit, or run-directory information is a coordination error.
