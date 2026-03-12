# AGENTS.md — Hospital Admission Records Analysis AI Agent Governance

> This file defines the rules, constraints, and boundaries for AI agents (Claude, Copilot, Cursor, Gemini, etc.)
> working in this repository. Any agent reading this file must follow the rules below before taking action.
>
> Last updated: 2026-03-09

---

## Scope

AI agents are authorized to assist with the development of the Hospital Admission Records Analysis project.
- Agents may read all files in this repository to provide context.
- Agents may modify `requirements.txt`, `setup.sh`, and Python scripts in the root or `src/` directories.
- Agents may suggest updates to `README.md` but should not modify `.github/` workflows or this `AGENTS.md` file without explicit human instruction.

---

## Constraints

- All code must be compatible with **Python 3.11**.
- Do not add any packages to `requirements.txt` that are not required for data analysis (pandas, matplotlib).
- Never commit secrets, credentials, or `.env` files.
- Follow the branch naming convention: `setup/description`, `feature/description` or `fix/description`.
- Maintain clean code following PEP 8 guidelines.

---

## Testing Requirements

Before considering a task complete, an agent must verify:
1. `bash setup.sh` exits with code 0.
2. `python3 test_environment.py` prints "Environment OK".
3. All existing tests in `tests/` pass successfully.
4. No `.venv/` or `__pycache__/` folders are staged for commit.

---

## Boundaries

- Never read, write, or modify files containing credentials or sensitive environment variables.
- Never push to remote branches or open pull requests autonomously; always wait for human confirmation.
- Changes to `AGENTS.md` or project rubrics are strictly off-limits unless specifically requested.
- If a suggested change would delete or overwrite significant data, the agent must ask for confirmation first.