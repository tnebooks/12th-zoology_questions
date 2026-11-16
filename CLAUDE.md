# Agent Project Instructions: 12th Zoology Question Bank

This repository (`12th-zoology_questions`) is a dedicated question bank for **Tamil Nadu State Board Class 12 Zoology / Bio-Zoology**.
It follows the **Gurukulams Design System** (`choose-the-best` format) and stores interactive practice MCQs.

---

## 1. Skill Available

Use the **`exam-pdf-parser`** skill whenever parsing exam papers, model papers, or PDF question banks into this repository:
- Antigravity / Gemini / Agent Skill: `.agents/skills/exam-pdf-parser/SKILL.md`
- Claude Code Skill: `.claude/skills/exam-pdf-parser/SKILL.md`

---

## 2. Directory Layout & Chapters

All questions are located under `questions/zoology/<chapter>/`:

1. `reproduction-in-organisms` - உயிரினங்களின் இனப்பெருக்கம்
2. `human-reproduction` - மனித இனப்பெருக்கம்
3. `reproductive-health` - இனப்பெருக்க நலன்
4. `principles-of-inheritance-and-variation` - மரபுக்கடத்தல் கோட்பாடுகள் மற்றும் மாறுபாடுகள்
5. `molecular-genetics` - மூலக்கூறு மரபியல்
6. `evolution` - பரிணாமம்
7. `human-health-and-diseases` - மனித நலன் மற்றும் நோய்கள்
8. `immunology` - நோய் தடைக்காப்பியல்
9. `microbes-in-human-welfare` - மனித நலனில் நுண்ணுயிரிகள்
10. `applications-of-biotechnology` - உயிரி தொழில்நுட்பவியலின் பயன்பாடுகள்
11. `organisms-and-populations` - உயிரினங்கள் மற்றும் இனக்கூட்டம்
12. `biodiversity-and-its-conservation` - உயிரிய பல்வகைத்தன்மை மற்றும் அதன் பாதுகாப்பு
13. `environmental-issues` - சுற்றுச்சூழல் பிரச்சினைகள்

For each question number `<n>`, two files MUST be created:
- English: `questions/zoology/<chapter>/<n>.md`
- Tamil: `questions/zoology/<chapter>/<n>_ta.md`

---

## 3. Standard Output Schema

```markdown
---
tags:
  - public
  - <exam-type>
  - '<year>'
  - 1-marks
choices:
  - <distractor 1>
  - <distractor 2>
  - <distractor 3>
answers:
  - <correct answer>
---

## <Clean question text without leading numbers>

---

#### <Factual, truth-based biological reasoning and justification>
```

---

## 4. Key Rules

1. **MCQ Only**: Only 1-mark multiple choice questions with 4 options belong here.
2. **Options Separation**: Exactly 3 distractors under `choices:`, 1 correct answer under `answers:`.
3. **Strip Option Letters**: Remove `(a)`, `(b)`, `(A)`, `(B)`, `(அ)`, `(ஆ)` prefixes completely.
4. **Zoology Scope**: From Biology papers, extract ONLY Part II (Bio-Zoology). Do NOT add Botany questions.
5. **Scientific Names**: Italicize genus and species names (`*Plasmodium vivax*`, `*Homo sapiens*`).
6. **Next Question Number**: Run `python3 scripts/next_question_number.py questions/zoology/<chapter>` to find the next sequential integer. Never overwrite or renumber existing questions.
7. **Bilingual Parity**: English and Tamil files must share the exact same integer `<n>`, identical `tags:`, and 1:1 answer correspondence.
