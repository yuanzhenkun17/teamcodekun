# Project Agent Rules

This project uses teamcodekun.

Session entry points:

- CEO: `teamcodekun/sessions/ceo.md`
- Builder: `teamcodekun/sessions/builder.md`
- Verifier: `teamcodekun/sessions/verifier.md`

Operational rules:

- Use one shared absolute `RUN_DIR` per task.
- If `.teamcodekun-run-path` exists, read it to find `RUN_DIR`.
- CEO writes only CEO run files.
- Builder is the default product-code writer.
- Verifier is read-only unless CEO authorizes a fix branch.
- Do not edit another role's run report.
