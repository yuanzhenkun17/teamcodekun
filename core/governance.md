# Governance

## Authority

The Human Owner has final authority.

The CEO Agent has orchestration authority.

Builder Lead has implementation authority inside the approved plan.

Verifier Lead has validation authority and limited small-fix authority.

Subagents have only the authority granted in their brief.

## Worktree Mode Authority

When CEO, Builder, and Verifier run as separate sessions:

- CEO writes only the run directory areas assigned to CEO.
- Builder is the only default product-code writer.
- Verifier is read-only by default.
- Verifier may edit product code only on an explicitly authorized fix branch.
- Each session must state its worktree path, branch, allowed write scope, and next output file before acting.
- No session edits another role's report.

## CEO Must Report

The CEO reports at these points:

- planning;
- post-build;
- post-verification;
- delivery.

## Verifier Small-Fix Authority

Verifier may directly fix:

- obvious type or syntax errors;
- missing assertions for already agreed behavior;
- naming inconsistencies;
- simple formatting or lint issues;
- small edge cases with clear expected behavior.

In worktree mode, these fixes require CEO authorization before Verifier edits product code.

Verifier must not directly change:

- architecture;
- product scope;
- data model direction;
- security posture;
- public behavior without approval.

## Escalation Triggers

Escalate to the Human Owner when:

- requirements are ambiguous after one clarification pass;
- Builder and Verifier disagree on a meaningful tradeoff;
- a change affects architecture, security, privacy, or deployment risk;
- verification cannot be completed;
- repeated fixes fail;
- a subagent exceeds scope.
