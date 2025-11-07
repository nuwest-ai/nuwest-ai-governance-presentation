# The AI Governance Blind Spot (v0.6 - FINAL)
## Why Your Data Protection Strategy Isn't Ready for Machine Learning

**CISO Virtual Forum Presentation**
**Delivery Date:** November 12, 2025
**Duration:** 30-35 minutes (optimized from v0.5's 45 slides)

---

## Overview

This is the **final version (v0.6)** of the AI Governance Blind Spot presentation, reduced from 45 slides to 35 slides (22% reduction) while maintaining all core messaging and emotional impact.

**What's Different from v0.5:**
- **Reduced slide count:** 45 → 35 slides (10 fewer slides)
- **Condensed examples:** DPD + Air Canada merged into single "Business & Legal Harm" slide
- **Streamlined threat analysis:** LLM swarms + HPTSA combined into "AI as Attack Vector"
- **Integrated three-dimensional threat:** Attack surface + gap merged
- **Consolidated evals framework:** Three slides → one comprehensive overview
- **Combined viability definition:** Testing viability + value proposition merged
- **Integrated maturity checklist:** Now part of 90-day action plan
- **Merged nuwest.ai offering:** Philosophy + services combined
- **Removed bsdetector teaser:** Distracting from main CTA
- **Premium design updates:** VC-funded title slide, LinkedIn QR code on closing

**What Remains the Same:**
- All seven-act structure maintained
- Core emotional arc intact (business → financial → safety → death)
- All citations and sources preserved
- Strong call to action
- nuwest.ai value proposition clear

---

## When to Use This Version

**Use v0.6 (this version) when:**
- Presentation slot is 30-40 minutes
- Audience is time-sensitive (CISOs at virtual forum)
- You want maximum impact per minute
- Need time for Q&A
- Want to appear professional and well-funded

**Use v0.5 (previous version) when:**
- You have 45-50 minutes available
- Audience wants more detail on each example
- Training/educational context

---

## Key Features

### Premium Design Elements
- **VC-funded title slide:** Large typography, professional layout, yellow divider
- **LinkedIn QR code:** Closing slide includes scannable QR to connect with presenter
- **Right-aligned citations:** All sources positioned consistently
- **Fragment animations:** Progressive reveals on critical slides (3, 5, 7, merged slides)
- **Polished closing:** "Thank you for attending" with contact info

### Visual Enhancements Needed
Based on comprehensive review (see OPUS_STYLE_REVIEW.md), these visuals would significantly enhance impact:

**Critical (Top 5):**
1. **Slide 7:** Escalation ladder diagram (business → financial → safety → death)
2. **Slide 13:** AI attack vector dual-panel (LLM swarms + HPTSA)
3. **Slide 17:** Three-dimensional threat Venn diagram
4. **Slide 20:** Four alignment metrics icons
5. **Slide 27:** 90-day timeline graphic

**Nice-to-have:**
- Cost projection bar chart
- ROI comparison visual
- NIST framework cycle diagram

---

## Key Themes

- Real-world examples of AI causing human harm (from business impact to loss of life)
- Regulatory landscape with teeth (EU AI Act, GDPR, discrimination lawsuits)
- The weaponization of AI (LLAMA hacking swarms, autonomous attacks)
- Testing for alignment using evals with fairness rubrics
- The business case for testing viability (security + ethics + proof)

---

## Brand Identity

**nuwest.ai branding:**
- **Colors:** Signal Yellow (#FFD300) + Charcoal Black (#000000/#111111) + White (#FFFFFF)
- **Fonts:**
  - Logo: Chakra Petch Semi-Bold
  - Headers: IBM Plex Sans
  - Body: Inconsolata
- **Aesthetic:** VC-funded, professional, minimal - no theatre
- **Taglines:**
  - Primary: "Facts, not fear."
  - Closing: "Measure what matters."

---

## Project Structure

```
presentation-v0.6/
├── index.html              # Main HTML file with reveal.js setup
├── slides.md               # Final condensed content (35 slides)
├── theme.css               # nuwest.ai branded theme with v0.6 enhancements
├── assets/
│   ├── logo.svg           # nuwest.ai logo
│   ├── favicon.svg        # Browser favicon
│   └── fonts/             # Local fonts (IBM Plex Sans, Inconsolata, Chakra Petch)
├── README.md              # This file
├── RUN_PRESENTATION.md    # Instructions for running locally
├── PDF_EXPORT_INSTRUCTIONS.md  # How to generate PDF booklet
├── CISO_ACTION_PLAN.md    # Downloadable 90-day action plan (LLM-friendly)
├── OPUS_STYLE_REVIEW.md   # Comprehensive review with reduction recommendations
└── .gitignore             # Git ignore rules
```

---

## Running the Presentation

**Quick Start:**

```bash
# Navigate to presentation directory
cd presentation-v0.6

# Start a local web server (Python 3)
python3 -m http.server 8000

# Open in browser
open http://localhost:8000
```

For detailed instructions, see **RUN_PRESENTATION.md**

---

## Presentation Controls

- **Arrow Keys / Space:** Navigate slides
- **F:** Fullscreen mode
- **S:** Speaker notes mode (opens separate window)
- **B:** Blackout screen
- **ESC:** Overview mode (see all slides)
- **?:** Show all keyboard shortcuts

---

## Key Citations

### AI Failures
1. DPD chatbot incident (Jan 2024) - TechRadar, ITV News
2. Moffatt v. Air Canada, 2024 BCCRT 149 (Feb 2024)
3. Tesla Grok incident (Oct 2025) - CBC News
4. Garcia v. Character Technologies Inc. (Oct 2024) - NBC News, Washington Post

### Regulation & Lawsuits
5. EU AI Act Article 99 - DLA Piper GDPR Enforcement Tracker (Jan 2025)
6. Mobley v. Workday, Inc., N.D. California (May 2025)
7. SafeRent Solutions class action settlement (Nov 2024)

### AI Threats
8. CVE-2024-50050, CVE-2024-34359 - The Hacker News
9. Carnegie Mellon University - "When LLMs Autonomously Attack" (2025)
10. IBM Cost of a Data Breach Report 2025

### Evals & Testing Frameworks
11. github.com/lizTheDeveloper/monitoring_llms_demo
12. NIST AI RMF 2.0 (Feb 2024)
13. NIST-AI-600-1 Generative AI Profile (July 2024)

---

## Presentation Structure (v0.6 - Final)

**Act I: When AI Fails, The Costs Are Real** (6-8 min)
- Four escalating examples condensed into focused slides
- Business & Legal Harm (merged DPD + Air Canada)
- Tesla Grok, Character.AI (with legal status integrated)
- The Pattern escalation ladder

**Act II: Regulation Isn't Enough** (4-5 min)
- Real fines and lawsuits
- Compliance trap clearly articulated
- Baseline vs. ceiling message

**Act III: The Blind Spot** (6-8 min)
- Traditional security model
- AI as attack vector (merged LLM swarms + HPTSA)
- Cost projection with 2x emphasis
- Vendor scare tactics warning
- Three-dimensional threat model

**Act IV: Testing for Alignment** (6-8 min)
- Testing gap highlighted
- Evals framework overview (merged concept + tools + frameworks)
- Four alignment metrics
- Production monitoring example

**Act V: The ROI of Knowing What's Real** (3-4 min)
- Cost comparison (NOT testing vs testing)
- Testing viability definition + value (merged)

**Act VI: The Path to Measurable Viability** (4-6 min)
- NIST framework (GOVERN, MAP, MEASURE, MANAGE)
- 90-day action plan with integrated maturity checklist
- Clear call to action

**Act VII: The nuwest.ai Approach** (3-4 min)
- Service offering (merged philosophy + what we do)
- Deliverables & 4-week engagement
- Strong closing with QR code

**Total:** 32-38 minutes (allows for pacing variation and Q&A)

---

## Slide Count Comparison

| Version | Total Slides | Estimated Time | Best For |
|---------|--------------|----------------|------------|
| v0.4 (Full) | 112 slides | 60-75 minutes | Deep dive, training |
| v0.5 (Condensed) | 45 slides | 35-50 minutes | Standard delivery |
| v0.6 (Final) | 35 slides | 30-38 minutes | **Time-sensitive, premium** |

**Reduction:** 22% fewer slides than v0.5, 69% fewer than v0.4

---

## Technology Stack

- **Reveal.js 5.0.4** - Presentation framework
- **Markdown** - Content format
- **Local Fonts** - IBM Plex Sans, Inconsolata, Chakra Petch
- **Vanilla CSS** - Custom theme (no preprocessors)
- **SVG** - Vector graphics for logo/favicon
- **QR Code API** - LinkedIn QR code generation

---

## Development Notes

**Slide Transitions:**
- Diverse weighted random transitions
- 6 transition types (none, fade, slide, convex, concave, zoom)
- Changes on every slide for variety and attention

**Responsive Design:**
- Optimized for 1920x1080 (Full HD)
- Responsive breakpoints for smaller screens
- Print/PDF export supported

**Accessibility:**
- High contrast (yellow on black, black on white)
- Large, legible fonts
- Semantic HTML structure
- Keyboard navigation
- WCAG AA compliant color contrast

---

## Export Options

**PDF Export:**
```
http://localhost:8000/?print-pdf
```
Then use browser's print function to save as PDF. See PDF_EXPORT_INSTRUCTIONS.md for details.

**Speaker Notes Export:**
Press `S` during presentation to open speaker notes window.

---

## Changes from v0.5 to v0.6

### Content Reduction (10 slides removed)
1. **Merged Slides 3-4** → "Business & Legal Consequences"
2. **Removed Slide 8** → Legal Status (integrated into Sewell Setzer slide)
3. **Merged Slides 15-16** → "AI as Attack Vector"
4. **Merged Slides 19-20** → "The Three-Dimensional AI Threat"
5. **Merged Slides 23-25** → "Testing with Evals & Fairness Rubrics"
6. **Merged Slides 30-31** → "Testing Viability = Security + Ethics + Proof"
7. **Merged Slide 35 into 34** → Maturity checklist in 90-day plan
8. **Merged Slides 37-38** → "The nuwest.ai Approach"
9. **Removed Slide 40** → bsdetector teaser

### Design Enhancements
1. **Title slide** redesigned with VC-funded aesthetic
2. **Closing slide** updated with "Thank you for attending" + LinkedIn QR code
3. **Citations** all right-aligned for consistency
4. **Forecast box** (Slide 16) fixed cutoff with reduced padding
5. **Fragment animations** added to slides for progressive reveal

---

## Adding Graphics

For graphics and iconography suggestions, see:
```
OPUS_STYLE_REVIEW.md
```

This document contains detailed specifications for the 5 critical visuals and additional nice-to-have diagrams.

**Critical graphics needed:**
1. Escalation ladder (Slide 7)
2. AI attack vector diagram (Slide 13)
3. Three-dimensional threat Venn diagram (Slide 17)
4. Four alignment metrics icons (Slide 20)
5. 90-day timeline (Slide 27)

---

## Contact

**nuwest.ai**
Neil Ashworth (Ash)
Founder & Chief Architect

**Email:** nuwest.ai@gmail.com
**Website:** https://www.nuwest.ai
**LinkedIn:** https://www.linkedin.com/in/neil-ashworth

For questions or updates, refer to project documentation or contact nuwest.ai.

---

**Last Updated:** 2025-11-07
**Version:** 0.6 (Final - Optimized for 30-minute delivery)
**Status:** Ready for November 12, 2025 CISO Virtual Forum
**Derived From:** presentation-v0.5 (45 slides → 35 slides, 22% reduction)
