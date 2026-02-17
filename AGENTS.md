# Repository Guidelines

## Project Structure & Module Organization
This is a documentation-first repository for interview preparation workflows.
- Core guides live in the repository root as numbered Markdown files: `00_overview_and_foundation.md` through `08_resources_and_prompts.md`.
- `README.md` is the navigation entrypoint for contributors and users.
- `inputs/` contains canonical source files: `inputs/00_user_profile.md`, `inputs/01_cv_resume.md`, and `inputs/02_target_company_role.md`.
- Agent behavior and local automation context live under `.claude/` (for example, `.claude/agents/interview-prep.md`).

## Build, Test, and Development Commands
There is no build pipeline or runtime app in this project.
- `./scripts/install-skill.sh` installs the portable skill to local Claude/Codex skill directories.
- `rg --files` lists repository files quickly.
- `rg -n "TODO|\\[ \\]|TBD" *.md inputs/*.md` finds unresolved placeholders.
- `rg -n "^#|^##" *.md inputs/*.md` checks heading structure consistency.
- `markdownlint "**/*.md"` is recommended if `markdownlint` is installed.

## Coding Style & Naming Conventions
- Write content in Markdown using clear ATX headings (`#`, `##`, `###`).
- Keep stage/framework files zero-padded and descriptive: `NN_topic.md` (example: `03_technical_case_round.md`).
- Keep generated prep outputs stage-prefixed (example: `01_hr_interview_prep.md`).
- Prefer concise bullets and tables over long prose blocks.
- Do not leave placeholders when real values exist in `inputs/00_user_profile.md`, `inputs/01_cv_resume.md`, or `inputs/02_target_company_role.md`.

## Testing Guidelines
This repository has no automated test framework.
- Validate links and cross-file references after edits.
- Verify stage numbering and filename prefixes remain consistent.
- Re-check copied metrics and facts against `inputs/00_user_profile.md` and source evidence in `inputs/01_cv_resume.md`.
- In a Git clone, review Markdown-only changes with `git diff -- *.md`.

## Commit & Pull Request Guidelines
No `.git` directory is present in this workspace, so project-specific history conventions cannot be inferred here.
- Recommended commit style: `docs(scope): short summary` (example: `docs(stage-04): tighten team interview prompts`).
- Keep commits focused on one stage or one document family.
- PRs should include: purpose, changed files, a short before/after excerpt, and any source-of-truth updates made in `inputs/00_user_profile.md`, `inputs/01_cv_resume.md`, or `inputs/02_target_company_role.md`.
