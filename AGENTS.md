# AGENTS.md

This file provides guidance for AI coding tools (Claude Code/Codex/OpenClaw) when working in this repository. The filename is kept as `CLAUDE.md` for Claude compatibility.

## Repository Overview

This is a documentation-only repository containing interview preparation guidelines. There is no code, build system, or tests - only markdown files with templates and frameworks for multi-stage job interviews.

## File Structure

- **`inputs/00_user_profile.md`** - **READ THIS FIRST for any interview prep.** Auto-populated by the onboarding agent. Canonical facts/numbers, STAR+ stories, universal Q&A bank, 30-60-90 templates, references.
- `inputs/01_cv_resume.md` - Canonicalized CV data. Written by the onboarding agent (do not fill manually).
- `inputs/02_target_company_role.md` - Company, role, interview stage, and interviewer context. **Auto-populated by the interview-prep agent via web search** for company context fields (product, business model, competitors, news, interviewer focus); required fields (company name, role, stage) must be provided by the user.
- `00_overview_and_foundation.md` - Core principles, 5-stage framework, research checklists
- `01_hr_screening_round.md` - HR prep template, Q&A categories, logistics
- `02_hiring_manager_round.md` - Behavioral interview prep, STAR+ stories, working style
- `03_technical_case_round.md` - Presentation structure, RICE framework, case tips
- `04_team_interview_round.md` - Peer interview prep, collaboration scenarios, culture fit
- `05_final_executive_round.md` - 30-60-90 plan, competitive defense, stakeholder profiles
- `06_cross_stage_frameworks.md` - Story bank, STAR+, proof points, universal questions (generic frameworks)
- `07_interview_execution.md` - Day-of checklists, video/in-person tips
- `08_resources_and_prompts.md` - Ready-to-use prompts for each interview stage
- `e2e_interview_prep_guideline_by_claude.md` - Combined 5-stage single-file reference (modular files remain canonical for maintenance)
- `.claude/agents/onboarding.md` - **Onboarding agent.** Run this first to parse a CV and auto-populate the profile.
- `.claude/agents/interview-prep.md` - Interview prep agent. Researches company context via web search (WebSearch + WebFetch), populates `inputs/02_target_company_role.md`, then generates stage-specific prep documents.

## Interview Flow (5 Stages)

```
Stage 1: HR/Screening → Stage 2: Hiring Manager → Stage 3: Technical/Case → Stage 4: Team Interview → Stage 5: Final/Executive
```

## How to Help Users

When users request interview prep assistance:

0. **Check if `inputs/00_user_profile.md` is populated.** If §1 or §2 still contain `[TO_FILL]`, direct the user to run the **onboarding agent** first. The onboarding agent parses their CV in any format and auto-populates both `inputs/01_cv_resume.md` and `inputs/00_user_profile.md`.
1. **ALWAYS read `inputs/00_user_profile.md` first** as the canonical source of personal facts and stories.
2. If `inputs/00_user_profile.md` has minor gaps in §3–§6, derive missing data from `inputs/01_cv_resume.md` and `inputs/02_target_company_role.md`. Do not derive §1 or §2 inline — that's the onboarding agent's job.
3. **If `inputs/02_target_company_role.md` has empty Company Context fields**, use **WebSearch** and **WebFetch** to research the company (product, business model, competitors, recent news) and write findings into the file before generating prep. Tag web-sourced data with `[WEB]` and uncertain data with `[TO_VERIFY]`.
4. For a new interview process, read `00_overview_and_foundation.md`.
5. For a specific stage, read the corresponding numbered file (`01_` through `05_`) and populate outputs from the profile data.
6. For reusable framing, read `06_cross_stage_frameworks.md`.
7. For prompt templates, read `08_resources_and_prompts.md`.

### Mapping: Commons Sections → Interview Stages

| Commons Section | Use For |
|----------------|---------|
| §1 Canonical Facts & Numbers | All stages — consistent numbers across every interview |
| §2 Core Story Bank (Stories A–K) | Stages 2–5 — select stories using §6 mapping table |
| §3 Universal Q&A Bank | Stages 1–5 — adapt per company, never contradict core answers |
| §4 Adaptable Frameworks (30-60-90) | Stage 5 — fill in company-specific details |
| §5 References & Testimonials | Stages 2, 4, 5 — "What would colleagues say?" |
| §6 Story ↔ Question Mapping | All stages — quick lookup for which story answers which question |

## Critical Rule

When generating any prep document, **always pull real content from `inputs/00_user_profile.md`** instead of leaving template placeholders. For example:
- "Your Numbers" → use §1 Key Numbers (e.g., "[X years]," "[Y impact metric]," "[Z scale metric]")
- "Story Bank" → select from §2 Stories A–K using the §6 mapping table
- "Walk me through your background" → use §3.1 prepared intro
- "Tell me about a failure" → use §3.5 with Story H or Story E
- "30-60-90 plan" → use §4.1 template, adapted for the company

## Output Files to Create

For each company, help users create:
- `01_hr_interview_prep.md` - From Stage 1 template
- `02_hiring_manager_prep.md` - From Stage 2 template
- `03_presentation_slides.md` - From Stage 3 template
- `03_case_analysis.md` - Supporting analysis for Stage 3
- `04_team_interview_prep.md` - From Stage 4 template
- `05_final_interview_slides.md` - From Stage 5 template (condensed for executives)
- `05_final_interview_prep.md` - From Stage 5 template (comprehensive Q&A)

## Key Frameworks

- **STAR+**: Situation, Task, Action, Result, + Learning
- **RICE**: Reach, Impact, Confidence, Effort (for prioritization)
- **30-60-90 Day Plan**: Learn → Stabilize → Deliver
- **Rule of 3**: Three concrete proof points for key claims
