# The AI Governance Blind Spot (CONDENSED VERSION)
## Why Your Data Protection Strategy Isn't Ready for Machine Learning

**CISO Virtual Forum Presentation**
**Delivery Date:** November 12, 2025
**Duration:** 35-50 minutes (condensed from 60+ minute v0.4)

---

## Overview

This is the **condensed version (v0.5)** of the AI Governance Blind Spot presentation, reduced from 112 slides to 45 slides (60% reduction) while maintaining all core messaging and impact.

**What's Different from v0.4:**
- **Consolidated examples:** Multiple Act I examples merged into comprehensive slides
- **Streamlined regulation section:** Combined GDPR fines and lawsuits into single slide
- **Merged threat analysis:** Condensed LLAMA/HPTSA technical details
- **Integrated testing framework:** Combined four alignment metrics into single comprehensive slide
- **Shorter action plan:** Combined NIST functions and 90-day plan

**What Remains the Same:**
- All seven-act structure maintained
- Core emotional arc intact (business → financial → safety → death)
- All citations and sources preserved
- Strong call to action
- nuwest.ai value proposition clear

---

## When to Use This Version

**Use v0.5 (this version) when:**
- Presentation slot is 45 minutes or less
- Audience prefers faster pace
- You want to maximize impact per minute
- Time for Q&A is important

**Use v0.4 (full version) when:**
- You have 60+ minutes available
- Audience wants deep technical detail
- You want to linger on each example
- Training/educational context

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
- **Colors:** Yellow (#FFD300) + Black (#000000)
- **Fonts:**
  - Headers: IBM Plex Sans
  - Body: Inconsolata
  - Logo: Chakra Petch Semi-Bold
- **Aesthetic:** Functional warning palette, minimal, no theatre
- **Taglines:**
  - Primary: "Facts, not fear."
  - Closing: "Measure what matters."

---

## Project Structure

```
presentation-v0.5/
├── index.html              # Main HTML file with reveal.js setup
├── slides.md               # Condensed presentation content (45 slides)
├── theme.css               # nuwest.ai branded theme
├── assets/
│   ├── logo.svg           # nuwest.ai logo
│   ├── favicon.svg        # Browser favicon
│   └── fonts/             # Local fonts (IBM Plex Sans, Inconsolata, Chakra Petch)
├── README.md              # This file
├── RUN_PRESENTATION.md    # Instructions for running locally
└── .gitignore             # Git ignore rules
```

---

## Running the Presentation

**Quick Start:**

```bash
# Navigate to presentation directory
cd presentation-v0.5

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

## Presentation Structure (v0.5 - Condensed)

**Act I: When AI Fails, The Costs Are Real** (8-10 min)
- Four escalating examples on fewer slides
- DPD chatbot, Air Canada, Tesla Grok, Character.AI
- Consolidated into comprehensive narrative

**Act II: Regulation Isn't Enough** (6-8 min)
- Real fines combined into single comprehensive slide
- Compliance trap clearly articulated
- Focused message about baseline vs. ceiling

**Act III: The Blind Spot** (8-10 min)
- Traditional vs. AI threat models
- Weaponized LLMs and HPTSA combined
- Three threat dimensions clearly defined
- Vendor scare tactics warning

**Act IV: Testing for Alignment** (8-10 min)
- Testing gap highlighted
- Four alignment metrics presented together
- Production monitoring example
- Clear framework explanation

**Act V: The ROI of Knowing What's Real** (5-7 min)
- Cost comparison consolidated
- Testing viability definition
- Value proposition clear

**Act VI: The Path to Measurable Viability** (5-7 min)
- NIST framework and 90-day plan combined
- Mature vs. immature governance
- Clear call to action

**Act VII: The nuwest.ai Approach** (3-5 min)
- Service offering streamlined
- bsdetector preview
- Strong closing

**Total:** 43-57 minutes (allows for pacing variation)

---

## Slide Count Comparison

| Version | Total Slides | Estimated Time | Best For |
|---------|--------------|----------------|----------|
| v0.4 (Full) | 112 slides | 60-75 minutes | Deep dive, training |
| v0.5 (Condensed) | 45 slides | 35-50 minutes | Executive briefing, time-constrained |

**Reduction:** 60% fewer slides, 40% shorter duration

---

## Technology Stack

- **Reveal.js 5.0.4** - Presentation framework
- **Markdown** - Content format
- **Local Fonts** - IBM Plex Sans, Inconsolata, Chakra Petch
- **Vanilla CSS** - Custom theme (no preprocessors)
- **SVG** - Vector graphics for logo/favicon

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
Then use browser's print function to save as PDF.

**Speaker Notes Export:**
Press `S` during presentation to open speaker notes window.

---

## Adding Graphics

For graphics and iconography suggestions, see:
```
/Users/home/Documents/nuwest/2026/presentations/image_prompts.md
```

This document contains detailed prompts for generating all recommended visual assets.

**Critical graphics needed:**
1. The Pattern escalation ladder (Slide 9)
2. Weaponized LLMs swarm diagram (Slide 15)
3. HPTSA autonomous attack diagram (Slide 16)
4. Four alignment metrics icons (Slide 26)

---

## Contact

**nuwest.ai**
Neil Ashworth (Ash)
Founder & Chief Architect

For questions or updates, refer to project documentation or contact nuwest.ai.

---

**Last Updated:** 2025-11-07
**Version:** 0.5 (Condensed)
**Status:** Ready for delivery
**Derived From:** presentation-v0.4 (112 slides → 45 slides)
