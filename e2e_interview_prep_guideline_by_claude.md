# End-to-End Interview Preparation Guideline (5-Stage)

> Single-file reference for the current framework. This document is aligned with the modular files `00_` through `08_`.

**Version:** 3.1  
**Last Updated:** February 17, 2026

---

## 1. Canonical Sources

Read in this order:

1. `inputs/00_user_profile.md` (personal source of truth)
2. `inputs/01_cv_resume.md` (resume source for missing profile fields)
3. `inputs/02_target_company_role.md` (company/role/stage context)
4. `00_overview_and_foundation.md` (framework and research)
5. Stage file for your current round (`01_` to `05_`)
6. `06_cross_stage_frameworks.md` and `07_interview_execution.md`
7. `08_resources_and_prompts.md` when you need prompt templates

If this file ever conflicts with a stage file, treat the stage file as canonical.

---

## 2. Framework Overview

### Core Principles

| Principle | Description |
|---|---|
| Consistency | Keep one clear core narrative across all rounds |
| Progressive depth | Each round builds on prior evidence |
| Evidence-first | Every claim should be tied to a story or metric |
| Audience-aware | Match depth and language to interviewer type |
| Hands-on + strategic | Show execution ability and strategic thinking |

### 5-Stage Interview Flow

```text
Stage 1 HR/Screening
  -> Stage 2 Hiring Manager
  -> Stage 3 Technical/Case
  -> Stage 4 Team Interview
  -> Stage 5 Final/Executive
```

### What Each Stage Tests

| Stage | They are asking | You are proving |
|---|---|---|
| HR/Screening | Should we continue? | Motivation, clarity, baseline fit |
| Hiring Manager | Can they do this role? | Behavioral depth, execution, collaboration |
| Technical/Case | Can they solve real problems? | Structure, prioritization, domain reasoning |
| Team Interview | Will they work well with us? | Team fit, cross-functional style |
| Final/Executive | Are they a strategic long-term bet? | Leadership, strategy, first-90-day plan |

---

## 3. Stage Outputs and Dependencies

| Stage | Primary file(s) | Key carry-forward |
|---|---|---|
| 1 | `01_hr_interview_prep.md` | Company context + motivation narrative |
| 2 | `02_hiring_manager_prep.md` | STAR+ evidence + manager priorities |
| 3 | `03_presentation_slides.md`, `03_case_analysis.md` | Structured solution and prioritization logic |
| 4 | `04_team_interview_prep.md` | Collaboration style and peer alignment |
| 5 | `05_final_interview_slides.md`, `05_final_interview_prep.md` | Executive narrative, 30-60-90, competitive defense |

### Relationship Map

```text
inputs/00_user_profile.md
  -> Stage 1 prep
  -> Stage 2 prep
  -> Stage 3 slides + case analysis
  -> Stage 4 team prep
  -> Stage 5 slides + final prep
```

---

## 4. Stage 1: HR/Screening

**Primary guide:** `01_hr_screening_round.md`  
**Output:** `01_hr_interview_prep.md`

Focus:
- Motivation and role-fit narrative
- Logistics readiness (timing, compensation, location)
- Concise proof points from `inputs/00_user_profile.md`

Minimum sections to include:
- Interviewer profile
- Company profile and role alignment
- Motivation answers
- Red-flag mitigation
- Questions to ask recruiter
- Quick reference card (numbers + key facts)

---

## 5. Stage 2: Hiring Manager / Behavioral

**Primary guide:** `02_hiring_manager_round.md`  
**Output:** `02_hiring_manager_prep.md`

Focus:
- Competence and operating style
- Story-driven behavioral evidence
- Coachability and conflict handling

Minimum sections to include:
- Hiring manager profile and likely priorities
- Behavioral Q&A by category
- 5-7 STAR+ stories mapped to role needs
- Weakness/growth answer
- Questions to ask hiring manager

---

## 6. Stage 3: Technical/Case

**Primary guide:** `03_technical_case_round.md`  
**Outputs:** `03_presentation_slides.md`, `03_case_analysis.md`

Focus:
- Problem framing and assumptions
- Prioritization and trade-offs
- Measurable outcomes and risk handling

Slide spine:
1. Opportunity
2. Problem
3. Competitive landscape
4. Proposed solution
5. Roadmap and prioritization
6. Success metrics
7. Risks and assumptions
8. Why me

Include:
- Explicit assumptions
- Chosen prioritization method (RICE/ICE/MoSCoW)
- Backup detail in `03_case_analysis.md`

---

## 7. Stage 4: Team Interview

**Primary guide:** `04_team_interview_round.md`  
**Output:** `04_team_interview_prep.md`

Focus:
- Cross-functional collaboration style
- Team chemistry and communication behavior
- Practical conflict resolution

Minimum sections to include:
- Interview format and schedule
- Interviewer-by-interviewer profile and predicted focus
- Collaboration scenarios and prepared responses
- Culture-fit mapping to company values
- Function-specific questions to ask

---

## 8. Stage 5: Final/Executive

**Primary guide:** `05_final_executive_round.md`  
**Outputs:** `05_final_interview_slides.md`, `05_final_interview_prep.md`

Focus:
- Strategic narrative and leadership presence
- 30-60-90 day execution plan
- Competitive defense and organizational design

`05_final_interview_slides.md` structure:
1. Opportunity
2. Vision
3. First 90 days
4. 6-month roadmap
5. Company synergy
6. Why me
7. Competitive defense
8. Team to build
9. What you need from leadership
10. Summary

`05_final_interview_prep.md` minimum sections:
- Stakeholder profiles
- Executive-level anticipated questions
- Story bank for leadership themes
- Cultural navigation
- Red flags to avoid
- Closing statement

---

## 9. Reusable Cross-Stage Frameworks

**Primary guide:** `06_cross_stage_frameworks.md`

### STAR+

| Component | Prompt |
|---|---|
| Situation | What context mattered? |
| Task | What were you accountable for? |
| Action | What did you specifically do? |
| Result | What changed (prefer metrics)? |
| + Learning | What would you refine next time? |

### Rule of 3
Prepare three repeatable proof points tied to measurable outcomes.

### Prioritization
Use one framework consistently for case reasoning:
- RICE
- ICE
- MoSCoW
- Value vs effort

### Red Flags to Avoid
- Overpromising certainty
- Criticizing previous employers
- Claiming to "fix" the company immediately
- Using unsupported numbers

---

## 10. Interview Day Execution

**Primary guide:** `07_interview_execution.md`

### Universal Checklist

- Review the stage-specific prep document
- Refresh latest company and interviewer updates
- Prepare 3-5 tailored questions
- Test setup (video) or logistics (in-person)
- Practice concise structured answers

### Stage-Specific Readiness Files

| Stage | Required file(s) before interview |
|---|---|
| 1 | `01_hr_interview_prep.md` |
| 2 | `02_hiring_manager_prep.md` |
| 3 | `03_presentation_slides.md` |
| 4 | `04_team_interview_prep.md` |
| 5 | `05_final_interview_slides.md`, `05_final_interview_prep.md` |

---

## 11. File Organization Standard

**Primary guide:** `08_resources_and_prompts.md`

```text
/[Company Name]/
  Inputs/
    job_description.txt
    case_assignment.txt
    company_research.txt
  Output/md/
    01_hr_interview_prep.md
    02_hiring_manager_prep.md
    03_presentation_slides.md
    03_case_analysis.md
    04_team_interview_prep.md
    05_final_interview_slides.md
    05_final_interview_prep.md
  research/
    company_research.md
    market_analysis.md
    interviewer_profiles.md
```

Naming rules:
- Prefix by stage number (`01_` to `05_`)
- Use `_prep` for Q&A docs
- Use `_slides` for presentation docs

---

## 12. Prompt Shortcuts (Claude)

Use these patterns:

### Stage 1 Prompt
"Read `inputs/00_user_profile.md`, `inputs/01_cv_resume.md`, `inputs/02_target_company_role.md`, and `01_hr_screening_round.md`, then create `01_hr_interview_prep.md` for [Company]/[Role]."

### Stage 2 Prompt
"Read `inputs/00_user_profile.md`, `inputs/01_cv_resume.md`, `inputs/02_target_company_role.md`, and `02_hiring_manager_round.md`, then create `02_hiring_manager_prep.md` with mapped STAR+ stories."

### Stage 3 Prompt
"Read `inputs/00_user_profile.md`, `inputs/01_cv_resume.md`, `inputs/02_target_company_role.md`, and `03_technical_case_round.md`, then produce `03_presentation_slides.md` and `03_case_analysis.md` from this case prompt: [paste]."

### Stage 4 Prompt
"Read `inputs/00_user_profile.md`, `inputs/01_cv_resume.md`, `inputs/02_target_company_role.md`, and `04_team_interview_round.md`, then create `04_team_interview_prep.md` for these interviewers: [list]."

### Stage 5 Prompt
"Read `inputs/00_user_profile.md`, `inputs/01_cv_resume.md`, `inputs/02_target_company_role.md`, and `05_final_executive_round.md`, then create `05_final_interview_slides.md` and `05_final_interview_prep.md` with a tailored 30-60-90 plan."

---

## 13. End-to-End Timeline (Example)

```text
Week 1: Stage 1 HR prep and interview
Week 2: Stage 2 hiring manager prep and interview
Week 3-4: Stage 3 case work + presentation
Week 5: Stage 4 team interviews
Week 6: Stage 5 final/executive interviews
```

After each round:
- Save new interviewer intel
- Update assumptions and stories
- Refine the next stage document before scheduling practice

---

## 14. Guideline Index

| File | Purpose |
|---|---|
| `inputs/00_user_profile.md` | Personal source of truth |
| `inputs/01_cv_resume.md` | CV/resume source used to populate the profile |
| `inputs/02_target_company_role.md` | Company/role/interviewer context |
| `00_overview_and_foundation.md` | Framework and baseline research |
| `01_hr_screening_round.md` | Stage 1 instructions |
| `02_hiring_manager_round.md` | Stage 2 instructions |
| `03_technical_case_round.md` | Stage 3 instructions |
| `04_team_interview_round.md` | Stage 4 instructions |
| `05_final_executive_round.md` | Stage 5 instructions |
| `06_cross_stage_frameworks.md` | Reusable answer frameworks |
| `07_interview_execution.md` | Day-of execution checklist |
| `08_resources_and_prompts.md` | Prompt and folder templates |

---

Interview Prep Framework v3.x
