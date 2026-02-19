# Interview Preparation Guidelines

A modular framework for preparing for multi-stage job interviews, designed for AI tools like Claude Code and Codex.

---

## Quick Start

1. **Download this repo and fill raw inputs first**: complete `inputs/01_cv_resume.md` and `inputs/02_target_company_role.md`.
2. **Ask AI to generate your canonical profile** (`inputs/00_user_profile.md`) from the template:
   ```text
   Read inputs/01_cv_resume.md and inputs/02_target_company_role.md.
   Then generate inputs/00_user_profile.md using the existing template structure.
   Replace placeholders with concrete details, keep metrics consistent with sources,
   and label any gaps as ASSUMPTION.
   ```
3. **Install skill + start current round**:
   - Install once: `./scripts/install-skill.sh`
   - Then run a stage prompt:
   ```text
   Read inputs/00_user_profile.md, inputs/01_cv_resume.md, inputs/02_target_company_role.md,
   and [STAGE_FILE]. Generate [OUTPUT_FILE] with interview-ready, non-placeholder content.
   ```
   Example: `[STAGE_FILE]=01_hr_screening_round.md`, `[OUTPUT_FILE]=01_hr_interview_prep.md`

---

## Interview Flow (5 Stages)

```
HR/Screening → Hiring Manager → Technical/Case → Team Interview → Final/Executive
   Stage 1         Stage 2          Stage 3          Stage 4          Stage 5
```

---

## File Structure

```
Interview Preparation Guidelines/
│
├── README.md                        ← You are here
│
├── .claude/agents/
│   └── interview-prep.md            ← Claude Code agent (invoke with @interview-prep)
│
├── inputs/
│   ├── 00_user_profile.md                   ← Canonical personal profile and story bank
│   ├── 01_cv_resume.md                      ← CV/resume source input
│   └── 02_target_company_role.md            ← Company + role + interviewer context
│
├── GUIDELINE FILES (read these)
│   ├── 00_overview_and_foundation.md   ← Start here
│   ├── 01_hr_screening_round.md        ← Stage 1: HR/Screening
│   ├── 02_hiring_manager_round.md      ← Stage 2: Hiring Manager (Behavioral)
│   ├── 03_technical_case_round.md      ← Stage 3: Technical/Case
│   ├── 04_team_interview_round.md      ← Stage 4: Team/Peer Interview
│   ├── 05_final_executive_round.md     ← Stage 5: Final/Executive
│   ├── 06_cross_stage_frameworks.md    ← Reusable framework templates to adapt
│   ├── 07_interview_execution.md       ← Day-of tips
│   └── 08_resources_and_prompts.md     ← Claude prompts
│
└── e2e_interview_prep_guideline_by_claude.md  ← Combined 5-stage single-file reference
```

---

## How to Use These Files

### Step 1: Foundation (Do Once Per Company)

Read `00_overview_and_foundation.md` to:
- Understand the core principles
- See how stages build on each other
- Complete foundation research (company, role, interviewers)

### Step 2: Stage-Specific Prep

Read the file for your current interview stage:

| Stage | File | Output You'll Create |
|-------|------|---------------------|
| HR/Screening | `01_hr_screening_round.md` | `01_hr_interview_prep.md` |
| Hiring Manager | `02_hiring_manager_round.md` | `02_hiring_manager_prep.md` |
| Technical/Case | `03_technical_case_round.md` | `03_presentation_slides.md` + `03_case_analysis.md` |
| Team Interview | `04_team_interview_round.md` | `04_team_interview_prep.md` |
| Final/Executive | `05_final_executive_round.md` | `05_final_interview_slides.md` + `05_final_interview_prep.md` |

### Step 3: Build Reusable Content

Your reusable content should live in **`inputs/00_user_profile.md`**:
- Story bank: 11 STAR+ stories (A–K) with tags and question mapping (§2, §6)
- Proof points: Key numbers from your own experience (§1)
- Universal Q&A answers: Motivation, leadership, prioritization, failure, etc. (§3)
- 30-60-90 day plan template (§4)
- References & testimonials (§5)

Use `06_cross_stage_frameworks.md` for the generic framework structure.

### Step 4: Interview Day

Review `07_interview_execution.md` before each interview for:
- Pre-interview checklist
- During-interview tips
- Closing strong
- Thank-you email template

---

## Using with AI Tools (Claude/Codex)

### Recommended Prompt Pattern

```text
Read inputs/00_user_profile.md, inputs/01_cv_resume.md, inputs/02_target_company_role.md,
and [STAGE_FILE].
Generate [OUTPUT_FILE] for [COMPANY] and [ROLE].
Requirements:
- Use concrete evidence and metrics from the input files.
- Keep content interview-ready and non-placeholder.
- If information is missing, add ASSUMPTION and list follow-up questions.
```

### Stage File Map

| Stage | `[STAGE_FILE]` | `[OUTPUT_FILE]` |
|-------|----------------|-----------------|
| HR/Screening | `01_hr_screening_round.md` | `01_hr_interview_prep.md` |
| Hiring Manager | `02_hiring_manager_round.md` | `02_hiring_manager_prep.md` |
| Technical/Case | `03_technical_case_round.md` | `03_presentation_slides.md` (+ optional `03_case_analysis.md`) |
| Team Interview | `04_team_interview_round.md` | `04_team_interview_prep.md` |
| Final/Executive | `05_final_executive_round.md` | `05_final_interview_slides.md` + `05_final_interview_prep.md` |

### Why Separate Files?

- **Reduced context:** AI reads only what's needed for your current stage
- **Faster responses:** Less content to process per request
- **Focused help:** Each file is self-contained with relevant templates

### More Prompt Examples

See `08_resources_and_prompts.md` for ready-to-use prompts:
- Initial research prompt
- HR round prep prompt
- Hiring manager prep prompt
- Case assignment analysis prompt
- Team interview prep prompt
- Final round prep prompt
- And more...

## Claude Code Agent

This repo includes a dedicated Claude Code agent for interview prep:

- `.claude/agents/interview-prep.md`

In Claude Code, invoke it with `@interview-prep` to get guided, stage-specific prep. The agent automatically reads your canonical profile, researches the company, and generates the correct output file for your current interview stage.

---

## Portable Skill (Claude/Codex)

This repo includes a portable skill package:

- `skills/interview-prep-portable/SKILL.md`

Install it locally to reuse this workflow in other repositories:

```bash
./scripts/install-skill.sh
```

Optional targets:

```bash
./scripts/install-skill.sh claude
./scripts/install-skill.sh codex
./scripts/install-skill.sh both --force
```

Manual paths (if needed):

1. Claude Code: copy `skills/interview-prep-portable/` to `~/.claude/skills/`
2. Codex: copy `skills/interview-prep-portable/` to `~/.agents/skills/` (or your configured skills directory)

---

## Output Files You'll Create

For each company, you'll produce:

```
/[Company Name]/
├── Inputs/
│   ├── job_description.txt
│   └── case_assignment.txt
│
└── Output/md/
    ├── 01_hr_interview_prep.md          ← From Stage 1
    ├── 02_hiring_manager_prep.md        ← From Stage 2
    ├── 03_presentation_slides.md        ← From Stage 3
    ├── 03_case_analysis.md              ← From Stage 3 (supporting)
    ├── 04_team_interview_prep.md        ← From Stage 4
    ├── 05_final_interview_slides.md     ← From Stage 5
    └── 05_final_interview_prep.md       ← From Stage 5
```

---

## File Reference

| File | When to Read | What's Inside |
|------|--------------|---------------|
| `inputs/00_user_profile.md` | First, always | **Your canonical profile:** stories, numbers, universal Q&A, 30-60-90 plans, references |
| `inputs/01_cv_resume.md` | Before filling profile | Resume/CV source material used to generate profile content |
| `inputs/02_target_company_role.md` | Per application | Company/role/interviewer context for targeted prep |
| `00_overview_and_foundation.md` | First, always | Core principles, 5-stage framework, research checklists |
| `01_hr_screening_round.md` | Before HR call | HR prep template, Q&A categories, logistics prep |
| `02_hiring_manager_round.md` | Before HM interview | Behavioral questions, STAR+ stories, working style |
| `03_technical_case_round.md` | Before technical | Presentation structure, RICE framework, case tips |
| `04_team_interview_round.md` | Before team interview | Peer profiles, collaboration scenarios, culture fit |
| `05_final_executive_round.md` | Before final | 30-60-90 plan, competitive defense, stakeholder profiles |
| `06_cross_stage_frameworks.md` | Throughout | Story bank, STAR+, proof points, universal questions |
| `07_interview_execution.md` | Day before | Checklists, video/in-person tips, thank-you template |
| `08_resources_and_prompts.md` | As needed | File organization, Claude prompts, example timeline |

---

## Version

- **Version:** 3.0
- **Last Updated:** February 2026
- **Changes:** Added Hiring Manager (Stage 2) and Team Interview (Stage 4) rounds

---

*Good luck with your interviews!*
