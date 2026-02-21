# Interview Preparation Framework

A modular, AI-native framework for preparing for multi-stage job interviews. Designed to work with Claude Code — paste your CV once, and agents handle the rest.

---

## Quick Start

### Step 1 — Onboard (run once)

In Claude Code, run the **onboarding agent** and paste your CV:

```
Run the onboarding agent. Here is my CV:

[paste your CV text here — any format works]
```

Or if your CV is in a file:

```
Run the onboarding agent. My CV is at: [file path]
```

The onboarding agent will:
- Extract all structured data from your CV
- Write `inputs/01_cv_resume.md` (canonicalized CV data)
- Write `inputs/00_user_profile.md` §1–§6 (facts, stories, Q&A, mapping)
- Flag any `[TO_VERIFY]` items for your review

### Step 2 — Add company context

Fill `inputs/02_target_company_role.md` with the company, role, interview stage, and job description.

### Step 3 — Generate stage prep

Run the **interview-prep agent** for your current stage:

```
Run the interview-prep agent. I'm preparing for a Stage 1 HR screening at [Company] for [Role].
Here's the job description: [paste JD]
```

The agent reads your profile and generates a ready-to-use prep document (`01_hr_interview_prep.md`, `02_hiring_manager_prep.md`, etc.).

---

## Interview Flow (5 Stages)

```
Stage 1: HR/Screening → Stage 2: Hiring Manager → Stage 3: Technical/Case → Stage 4: Team Interview → Stage 5: Final/Executive
```

Each stage builds on the previous one. Your canonical profile (`inputs/00_user_profile.md`) feeds all stages with consistent facts, stories, and numbers.

---

## File Structure

```
Interview Prep Framework/
│
├── README.md                              ← You are here
│
├── .claude/agents/
│   ├── onboarding.md                      ← Run first: parses CV and populates profile
│   └── interview-prep.md                  ← Run per stage: generates prep documents
│
├── inputs/
│   ├── 00_user_profile.md                 ← Auto-populated by onboarding agent (canonical profile)
│   ├── 01_cv_resume.md                    ← Auto-populated by onboarding agent (structured CV data)
│   └── 02_target_company_role.md          ← Fill manually: company, role, stage, JD
│
├── GUIDELINE FILES
│   ├── 00_overview_and_foundation.md      ← Core principles and 5-stage framework
│   ├── 01_hr_screening_round.md           ← Stage 1: HR/Screening
│   ├── 02_hiring_manager_round.md         ← Stage 2: Hiring Manager (Behavioral)
│   ├── 03_technical_case_round.md         ← Stage 3: Technical/Case
│   ├── 04_team_interview_round.md         ← Stage 4: Team/Peer Interview
│   ├── 05_final_executive_round.md        ← Stage 5: Final/Executive
│   ├── 06_cross_stage_frameworks.md       ← Reusable STAR+, RICE, and other frameworks
│   ├── 07_interview_execution.md          ← Day-of checklists and tips
│   └── 08_resources_and_prompts.md        ← Ready-to-use Claude prompts for each stage
│
└── e2e_interview_prep_guideline_by_claude.md  ← Combined single-file reference
```

---

## The Two Agents

### `onboarding` — Run once per profile update

Accepts your CV in any format (raw text paste, file path, or inline in chat). Extracts all structured data and writes both canonical input files in a single pass.

**What it populates:**
- `inputs/01_cv_resume.md` — structured CV: roles, dates, achievements, education, skills
- `inputs/00_user_profile.md` §1–§6 — professional snapshot, STAR+ story bank, universal Q&A answers, story-to-question mapping

**What it cannot infer (you fill these later):**
- `§4` 30-60-90 day plan — requires company context from `inputs/02_target_company_role.md`
- `§5` References — must be added manually

Re-run anytime you update your CV.

---

### `interview-prep` — Run per stage

Reads your populated profile and generates a stage-specific prep document. Requires `inputs/00_user_profile.md` to be populated (runs the onboarding guard if not).

**Outputs it creates:**

| Stage | Output File |
|-------|-------------|
| 1. HR/Screening | `01_hr_interview_prep.md` |
| 2. Hiring Manager | `02_hiring_manager_prep.md` |
| 3. Technical/Case | `03_presentation_slides.md` (+ `03_case_analysis.md`) |
| 4. Team Interview | `04_team_interview_prep.md` |
| 5. Final/Executive | `05_final_interview_slides.md` + `05_final_interview_prep.md` |

---

## Input Files

| File | How It Gets Filled | What's Inside |
|------|--------------------|---------------|
| `inputs/00_user_profile.md` | Onboarding agent (auto) | §1 facts & metrics, §2 STAR+ stories A–K, §3 Q&A bank, §4 frameworks, §5 references, §6 story mapping |
| `inputs/01_cv_resume.md` | Onboarding agent (auto) | Structured CV: roles, achievements, education, skills, raw CV text |
| `inputs/02_target_company_role.md` | You (manual, per application) | Company, role, stage, JD, interviewer names |

> **Note:** Do not edit `inputs/00_user_profile.md` or `inputs/01_cv_resume.md` by hand. Re-run the onboarding agent to regenerate them from an updated CV.

---

## Guideline Files

| File | When to Read |
|------|--------------|
| `00_overview_and_foundation.md` | First, before any stage |
| `01_hr_screening_round.md` | Before Stage 1 |
| `02_hiring_manager_round.md` | Before Stage 2 |
| `03_technical_case_round.md` | Before Stage 3 |
| `04_team_interview_round.md` | Before Stage 4 |
| `05_final_executive_round.md` | Before Stage 5 |
| `06_cross_stage_frameworks.md` | Reference throughout |
| `07_interview_execution.md` | Day before each interview |
| `08_resources_and_prompts.md` | For ready-to-use prompts |

---

## Key Frameworks

- **STAR+** — Situation, Task, Action, Result, + Learning (used in `§2` story bank)
- **RICE** — Reach, Impact, Confidence, Effort (for prioritization questions)
- **30-60-90 Day Plan** — Learn → Stabilize → Deliver (used in Stage 5)
- **Rule of 3** — Three concrete proof points for every key claim

---

## Privacy Note

`inputs/00_user_profile.md`, `inputs/01_cv_resume.md`, and any files you create under company-named folders will contain personal data. Do not commit these to a public repository unless you intend to share them.

---

## Version

- **Version:** 3.1
- **Last Updated:** February 2026
- **Changes:** Added dedicated onboarding agent for automatic CV parsing; `inputs/01_cv_resume.md` is now an agent output (not a manual input); interview-prep agent now includes preflight profile guard
