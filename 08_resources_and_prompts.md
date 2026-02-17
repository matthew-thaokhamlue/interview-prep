# Resources and Prompts for Claude

> File organization guidance and prompts to use with Claude for interview prep.

---

## File Organization

### Recommended Folder Structure

```
/[Company Name]/
├── Inputs/
│   ├── job_description.txt
│   ├── case_assignment.txt
│   ├── company_research.txt
│   └── [other inputs]
├── Output/
│   └── md/
│       ├── 01_hr_interview_prep.md
│       ├── 02_hiring_manager_prep.md
│       ├── 03_presentation_slides.md
│       ├── 03_case_analysis.md
│       ├── 04_team_interview_prep.md
│       ├── 05_final_interview_prep.md
│       ├── 05_final_interview_slides.md
│       └── story_bank.md
├── research/
│   ├── company_research.md
│   ├── market_analysis.md
│   └── interviewer_profiles.md
└── claude.md (project context)
```

### Naming Convention

- Prefix with stage number for ordering (`01_`, `02_`, `03_`, `04_`, `05_`)
- Include interview type in filename
- Use `_prep` suffix for Q&A documents
- Use `_slides` suffix for presentations

### Version Control

- Update after each interview with new intel
- Keep original JD saved (they sometimes change postings)
- Track what questions were asked per stage

---

## Prompts for Claude

> **Important:** All prompts below assume Claude will read `inputs/00_user_profile.md` first. If that file is incomplete, Claude should pull missing details from `inputs/01_cv_resume.md`, `inputs/02_target_company_role.md`, and other files in `inputs/`.

### Initial Research Prompt

```
I'm preparing for an interview at [Company] for [Role].

Please read inputs/00_user_profile.md, inputs/01_cv_resume.md, and inputs/02_target_company_role.md, then help me research:
1. Company background and recent news
2. Market/industry context
3. Competitors and positioning
4. Key challenges they likely face
5. How my experience (from the commons) maps to their needs

Here's the job description: [paste]
```

### HR Round Prep Prompt (Stage 1)

```
Help me prepare for an HR screening call at [Company] for [Role].

Read inputs/00_user_profile.md, inputs/01_cv_resume.md, inputs/02_target_company_role.md, and 01_hr_screening_round.md, then create a prep document with:
1. Interviewer profile (if I provide their name/LinkedIn)
2. Company quick facts to mention
3. Prepared answers for motivation questions (adapt from commons §3.1)
4. Role alignment (map my experience from commons §1 to their requirements)
5. My numbers for Quick Reference Card (from commons §1)
6. Questions to ask the recruiter

The role: [key responsibilities]
```

### Hiring Manager Prep Prompt (Stage 2)

```
Help me prepare for a hiring manager interview at [Company] for [Role].

Read inputs/00_user_profile.md, inputs/01_cv_resume.md, inputs/02_target_company_role.md, and 02_hiring_manager_round.md, then create a prep document with:
1. Hiring manager profile and likely focus areas
2. Behavioral questions by category — map to my stories using commons §6
3. STAR+ stories selected from commons §2 (Stories A–K)
4. Answers adapted from commons §3.2-3.7 (leadership, prioritization, technical, failure, stakeholders, working style)
5. Weakness answer from commons §3.5
6. Questions to ask the hiring manager

The hiring manager: [name, title if known]
```

### Case Assignment Analysis Prompt (Stage 3)

```
I've received a case assignment for [Company]. Please help me:
1. Analyze the problem they've presented
2. Structure my response
3. Identify key assumptions to call out
4. Suggest a prioritization framework

Here's the assignment: [paste]
```

### Team Interview Prep Prompt (Stage 4)

```
Help me prepare for a team interview at [Company] for [Role].

Read inputs/00_user_profile.md, inputs/01_cv_resume.md, inputs/02_target_company_role.md, and 04_team_interview_round.md, then create a prep document with:
1. Individual profiles for each interviewer
2. Cross-functional collaboration scenarios
3. Collaboration stories from commons §2 (Stories F, J, K) adapted for this team
4. Working style answers from commons §3.4 and §3.7
5. Culture fit demonstration (based on company values)
6. Questions to ask each function

Interviewers:
1. [Name] - [Title/Function]
2. [Name] - [Title/Function]
3. [Name] - [Title/Function]

Company values: [list if known]
```

### Final/Executive Round Prep Prompt (Stage 5)

```
Help me prepare for a final/executive interview at [Company] for [Role].

Read inputs/00_user_profile.md, inputs/01_cv_resume.md, inputs/02_target_company_role.md, and 05_final_executive_round.md, then create prep documents with:
1. Stakeholder profiles for each executive
2. 30-60-90 day plan (adapt from commons §4.1, fill in company details)
3. Competitive defense strategy
4. Executive-level Q&A (adapt from commons §3.2 leadership, §3.8 strategy)
5. Condensed presentation slides with proof points from commons §1
6. References ready to deploy (commons §5)

Interviewers:
1. [Name] - [Title]
2. [Name] - [Title]

Key competitors: [list]
```

### Competitive Research Prompt

```
Please research [Competitor] for my [Company] interview:
1. Their product strategy and positioning
2. Recent moves (acquisitions, funding, launches)
3. Strengths and weaknesses
4. How [Company] can counter them
5. What [Company] can learn from them
```

### Q&A Preparation Prompt

```
Help me prepare for questions in my [Role] interview at [Company].

For each question category, provide:
1. Likely questions they'll ask
2. Answer frameworks
3. Specific talking points based on my experience

My background: [brief summary]
The role: [key responsibilities]
```

### 30-60-90 Day Plan Prompt

```
Help me create a 30-60-90 day plan for [Role] at [Company].

Context:
- Month 1 focus: [what I told them]
- Month 2 focus: [what I told them]
- Month 3 focus: [what I told them]

Please structure with activities, purposes, and deliverables.
```

### Final Prep Review Prompt

```
Review my interview preparation for [Company]:

1. Is my core message consistent across all materials?
2. Do I have specific examples for key claims?
3. Are there gaps in my Q&A preparation?
4. What questions might I not be prepared for?

[Paste key sections of your prep]
```

### Story Bank Review Prompt

```
Review my story bank in inputs/00_user_profile.md §2 (Stories A–K) and §6 (mapping table).

For the [Role] at [Company], help me:
1. Select the 3-5 best stories for this specific role
2. Identify any gaps not covered by my existing stories
3. Suggest how to adapt story framing for this company's context
4. Flag any numbers I should emphasize or de-emphasize
```

### Stakeholder Profiling Prompt

```
Help me prepare stakeholder profiles for my final round interview.

Interviewers:
1. [Name] - [Title]
2. [Name] - [Title]
3. [Name] - [Title]

For each, research and provide:
- Background and likely focus areas
- Communication style predictions
- Questions they might ask
- How to connect with their priorities
```

---

## Complete Example Flow

### Example Timeline

```
WEEK 1: HR/SCREENING ROUND
├── Day 1-2: Receive interview invitation
├── Day 3-5: Company research, create 01_hr_interview_prep.md
├── Day 6: HR interview
└── Output: 01_hr_interview_prep.md

WEEK 2: HIRING MANAGER ROUND
├── Day 1: Receive HM interview confirmation
├── Day 2-4: Deep behavioral prep, create 02_hiring_manager_prep.md
├── Day 5: Hiring manager interview
└── Output: 02_hiring_manager_prep.md

WEEK 3-4: TECHNICAL/CASE ASSIGNMENT
├── Day 1: Receive case assignment
├── Day 2-5: Deep research, analysis
├── Day 6-10: Create 03_presentation_slides.md
├── Day 11-12: Practice presentation
├── Day 13: Technical interview
└── Output: 03_presentation_slides.md, 03_case_analysis.md

WEEK 5: TEAM INTERVIEW
├── Day 1: Receive team interview confirmation
├── Day 2-3: Research all interviewers
├── Day 4-5: Create 04_team_interview_prep.md
├── Day 6: Team interview
└── Output: 04_team_interview_prep.md

WEEK 6: FINAL/EXECUTIVE INTERVIEW
├── Day 1: Receive final round confirmation
├── Day 2-3: Stakeholder research, competitor deep dive
├── Day 4-5: Create 05_final_interview_slides.md
├── Day 6-7: Create 05_final_interview_prep.md
├── Day 8: Add 30-60-90 plan, competitive defense
├── Day 9-10: Practice, refine, create quick reference card
├── Day 11: Final interview
└── Output: 05_final_interview_slides.md, 05_final_interview_prep.md
```

### Content Flow Between Files

```
inputs/00_user_profile.md ─────────────────────────────────────────────────────┐
    │ (canonical facts, stories, Q&A, 30-60-90, references)           │
    │ Feeds ALL stages with personal data                              │
    ▼                                                                  │
01_hr_interview_prep.md                                                │
    │                                                                  │
    │ (company context, motivation, cultural notes)                    │
    ▼                                                                  │
02_hiring_manager_prep.md
    │
    │ (behavioral depth, working style, manager insights)
    ▼
03_presentation_slides.md
    │
    ├──────────────────────────────────────────┐
    │                                          │
    │ (solution approach, methodology)         │ (domain expertise)
    ▼                                          ▼
04_team_interview_prep.md              05_final_interview_slides.md
    │                                          │
    │ (collaboration focus,                    │ + 30-60-90 plan
    │  culture signals,                        │ + Competitive defense
    │  peer relationships)                     │ + Team building
    │                                          │ + What I need
    │                                          │ + Appendices
    │                                          │
    └──────────────────┬───────────────────────┘
                       │
                       ▼
              05_final_interview_prep.md
                       │
                       │ + Stakeholder profiles
                       │ + Story bank
                       │ + 6 question categories
                       │ + Cultural navigation
                       │ + Quick reference
                       │
                       ▼
               FINAL INTERVIEW
```

### Key Additions at Each Stage

| Stage | New Content Added |
|-------|-------------------|
| **HR → HM** | Behavioral depth, STAR+ stories, weakness prep |
| **HM → Technical** | Domain expertise, solution approach, roadmap, metrics |
| **Technical → Team** | Collaboration focus, peer profiles, culture demonstration |
| **Team → Final** | 30-60-90 plan, competitive defense, team building, asks |

---

## Guideline Files Index

| File | Purpose | When to Read |
|------|---------|--------------|
| `inputs/00_user_profile.md` | Personal data: stories, numbers, Q&A, plans | First, before any stage |
| `00_overview_and_foundation.md` | Core principles, foundation research | First, before any stage |
| `01_hr_screening_round.md` | HR interview prep | Before Stage 1 |
| `02_hiring_manager_round.md` | Hiring manager behavioral prep | Before Stage 2 |
| `03_technical_case_round.md` | Technical/case assignment prep | Before Stage 3 |
| `04_team_interview_round.md` | Team/peer interview prep | Before Stage 4 |
| `05_final_executive_round.md` | Final/executive round prep | Before Stage 5 |
| `06_cross_stage_frameworks.md` | Reusable frameworks | Reference throughout |
| `07_interview_execution.md` | Day-of execution tips | Before each interview |
| `08_resources_and_prompts.md` | File org, Claude prompts | As needed |

---

*Interview Prep Framework v3.0*
