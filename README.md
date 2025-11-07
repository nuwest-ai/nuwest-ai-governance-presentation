# The AI Governance Blind Spot
## Why Your Data Protection Strategy Isn't Ready for Machine Learning

**CISO Virtual Forum Presentation**
**Delivery Date:** November 10, 2025
**Duration:** 45-60 minutes

---

## Overview

This presentation addresses the critical blind spot in AI governance that most organizations miss: the gap between data protection strategies and the ethical/safety requirements of AI systems that directly interact with humans.

**Key Themes:**
- Real-world examples of AI causing human harm (from business impact to loss of life)
- Regulatory landscape with teeth (EU AI Act, GDPR, discrimination lawsuits)
- The weaponization of AI (LLAMA hacking swarms, autonomous attacks)
- Testing for alignment using evals with fairness rubrics
- The business case for testing viability (security + ethics + proof)

---

## Brand Identity

**nuwest.ai branding:**
- **Colors:** Yellow (#FFD300) + Black (#000000)
- **Font:** Chakra Petch
- **Aesthetic:** Functional warning palette, minimal, no theatre
- **Taglines:**
  - Primary: "Facts, not fear."
  - Closing: "Measure what matters."

---

## Project Structure

```
presentation-v0.4/
├── index.html              # Main HTML file with reveal.js setup
├── slides.md               # Presentation content in Markdown
├── theme.css               # nuwest.ai branded theme
├── assets/
│   ├── logo.svg           # nuwest.ai logo
│   └── favicon.svg        # Browser favicon
├── README.md              # This file
├── RUN_PRESENTATION.md    # Instructions for running locally
└── .gitignore             # Git ignore rules
```

---

## Running the Presentation

**Quick Start:**

```bash
# Navigate to presentation directory
cd presentation-v0.4

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

## Presentation Structure

**Act I: When AI Fails, The Costs Are Real** (10-12 min)
- DPD chatbot (reputational damage)
- Air Canada (financial liability)
- Tesla Grok (child safety)
- Character.AI (loss of life)

**Act II: Regulation Isn't Enough** (8-10 min)
- EU AI Act fines and enforcement
- GDPR as AI guardrail
- Discrimination lawsuits winning
- The compliance trap

**Act III: The Blind Spot** (10-12 min)
- Traditional security model vs. AI threats
- Weaponized LLMs and hacking swarms
- Cost projection and vendor scare tactics
- Three simultaneous threat dimensions

**Act IV: Testing for Alignment** (10-12 min)
- The testing gap
- Evals with fairness rubrics
- Four critical alignment metrics
- Production monitoring example

**Act V: The ROI of Knowing What's Real** (6-8 min)
- Cost of NOT testing vs. cost of testing
- What "testing viability" means
- Why regulation is baseline, not ceiling

**Act VI: The Path to Measurable Viability** (6-8 min)
- NIST AI RMF adapted for testing
- 90-day action plan
- Mature vs. immature AI governance

**Act VII: The nuwest.ai Approach** (4-6 min)
- What we do (and don't do)
- Security + ethical viability testing
- bsdetector preview

---

## Technology Stack

- **Reveal.js 5.0.4** - Presentation framework
- **Markdown** - Content format
- **Google Fonts** - Chakra Petch typography
- **Vanilla CSS** - Custom theme (no preprocessors)
- **SVG** - Vector graphics for logo/favicon

---

## Development Notes

**Slide Transitions:**
- Main transition: `slide`
- Background transition: `zoom`
- Randomized transitions on 30% of slide changes for unpredictability

**Responsive Design:**
- Optimized for 1920x1080 (Full HD)
- Responsive breakpoints for smaller screens
- Print/PDF export supported

**Accessibility:**
- High contrast (yellow on black, black on white)
- Large, legible fonts
- Semantic HTML structure
- Keyboard navigation

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

## Contact

**nuwest.ai**
Neil Ashworth (Ash)
Founder & Chief Architect

For questions or updates, refer to project documentation or contact nuwest.ai.

---

**Last Updated:** 2025-11-06
**Version:** 0.4
**Status:** Ready for delivery
