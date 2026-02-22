# Inputs Folder

This folder stores the canonical data files used by agents to generate interview prep outputs.

## Files

| File | How It Gets Filled |
|------|--------------------|
| `00_user_profile.md` | **Auto-populated by the onboarding agent** — do not edit manually |
| `01_cv_resume.md` | **Auto-populated by the onboarding agent** — do not edit manually |
| `02_target_company_role.md` | **Partially auto-filled by the interview-prep agent** — you provide company name, role, and stage; the agent researches everything else |

## How to Populate

### Profile files (00 and 01)

Run the onboarding agent in Claude Code with your CV:

```
Run the onboarding agent. Here is my CV:

[paste CV text]
```

The onboarding agent writes `00_user_profile.md` and `01_cv_resume.md` in one pass.

### Company context file (02)

You do **not** need to fill `02_target_company_role.md` manually. Just run the interview-prep agent:

```
Run the interview-prep agent. I'm preparing for a Stage 1 HR screening at [Company] for [Role].
Here's the job description: [paste JD or provide the job posting URL]
```

The interview-prep agent will:
- Search the web for company product, business model, competitors, and recent news
- Fetch the JD from the URL if you provided a link
- Research any interviewers you name
- Write all findings into `02_target_company_role.md` before generating your prep document

Web-sourced data is tagged `[WEB]` so you can tell it apart from your own notes.

**To fill manually instead:** open `02_target_company_role.md` and fill the fields yourself. The agent will use your data and skip web searches for fields that already have real content.

## What each field in 02_target_company_role.md needs

| Field | Who fills it |
|---|---|
| Company name, role title, stage, interview date | You (required) |
| Application URL | You (optional — enables JD auto-fetch) |
| Job description highlights | Agent (via URL fetch or JD paste) |
| Product/domain, business model, competitors, news | Agent (via WebSearch) |
| Case assignment details | You (if a case was given) |
| Interviewer names | You (optional — enables interviewer research) |
| Interviewer focus guess | Agent (via WebSearch, if names provided) |

## Privacy Note

These files will contain personal data. Do not commit them to a public repository unless you intend to share them.
