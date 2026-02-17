---
name: interview-prep-portable
description: Use when preparing for interviews from reusable template inputs and you need stage-specific prep outputs across HR, hiring manager, technical, team, or final rounds.
---

# Interview Prep Portable Skill

## Overview

Use this skill to generate interview prep artifacts from a standard input pack so the workflow is shareable across users and repositories.

Canonical input files:
- `inputs/00_user_profile.md`
- `inputs/01_cv_resume.md`
- `inputs/02_target_company_role.md`

If `inputs/00_user_profile.md` has placeholders, infer missing content from `inputs/01_cv_resume.md`, `inputs/02_target_company_role.md`, and any other files in `inputs/`.

## Stage Flow

1. HR/Screening -> `01_hr_interview_prep.md`
2. Hiring Manager -> `02_hiring_manager_prep.md`
3. Technical/Case -> `03_presentation_slides.md` (+ optional `03_case_analysis.md`)
4. Team Interview -> `04_team_interview_prep.md`
5. Final/Executive -> `05_final_interview_slides.md` + `05_final_interview_prep.md`

## Required Read Order

1. `inputs/00_user_profile.md`
2. `inputs/01_cv_resume.md`
3. `inputs/02_target_company_role.md`
4. `00_overview_and_foundation.md`
5. Current stage guide (`01_` through `05_`)
6. `06_cross_stage_frameworks.md` and `07_interview_execution.md` as needed

## Output Rules

- Keep metrics and story details consistent with input files.
- Use STAR+ for behavioral answers.
- Use explicit assumptions for case/executive outputs.
- Do not leave placeholders when source data exists.

## Prompt Starter

```text
Use the interview-prep-portable workflow.
Read inputs/00_user_profile.md, inputs/01_cv_resume.md, inputs/02_target_company_role.md,
and the relevant stage guide.
Then generate the exact stage output file with concrete, non-placeholder content.
```

## Install Notes

- From this repository: run `./scripts/install-skill.sh`
- Claude Code: copy `skills/interview-prep-portable/` into `~/.claude/skills/`
- Codex: copy `skills/interview-prep-portable/` into `~/.agents/skills/` (or your configured skills directory)
