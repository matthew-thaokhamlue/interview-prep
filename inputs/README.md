# Inputs Folder

This folder stores the canonical data files used by agents to generate interview prep outputs.

## Files

| File | How It Gets Filled |
|------|--------------------|
| `00_user_profile.md` | **Auto-populated by the onboarding agent** — do not edit manually |
| `01_cv_resume.md` | **Auto-populated by the onboarding agent** — do not edit manually |
| `02_target_company_role.md` | **Fill this manually** — one per application |

## How to Populate

Run the onboarding agent in Claude Code with your CV:

```
Run the onboarding agent. Here is my CV:

[paste CV text]
```

The onboarding agent writes `00_user_profile.md` and `01_cv_resume.md` in one pass.
After that, fill `02_target_company_role.md` with company and role context, then run the interview-prep agent.

## Privacy Note

These files will contain personal data. Do not commit them to a public repository unless you intend to share them.
