# Inputs Folder Guide

This folder stores personal and company-specific data used by AI tools (Claude, Codex) to generate interview prep outputs.

## Recommended Files (Template-Based)

Use these as the default sharable inputs:
- `inputs/00_user_profile.md`
- `inputs/01_cv_resume.md`
- `inputs/02_target_company_role.md`

## Private Data Handling

If you keep personal files in this folder, do not commit them publicly.
Use only the template files for sharable repositories, and replace placeholders with your own information.

## Quick AI Prompt

Use this prompt to generate a filled profile from your inputs:

```text
Read these files:
1) inputs/01_cv_resume.md
2) inputs/02_target_company_role.md
3) Any additional files in inputs/

Then fill and update inputs/00_user_profile.md with concrete facts, story bank entries, Q&A answers, and story-question mapping.
Do not leave placeholders when information exists in the inputs.
```

## Privacy Note

Do not commit sensitive personal information to public repositories unless you intend to share it.
