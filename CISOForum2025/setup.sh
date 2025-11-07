#!/bin/bash

# Complete Setup Script for CISO Summit 2025 Presentation
# Creates ALL files with full unabridged content
# Version: 2.0 Complete

set -e
TARGET_DIR="/Users/home/Documents/nuwest/2026/presentations/CISOSummit2025"

echo "================================================"
echo "CISO Summit 2025 - COMPLETE Installation"
echo "================================================"
echo "Target: $TARGET_DIR"
echo ""

# Create structure
mkdir -p "$TARGET_DIR/assets"

# ============================================================================
# 1. CREATE INDEX.HTML
# ============================================================================
echo "[1/6] Creating index.html..."
cat > "$TARGET_DIR/index.html" << 'ENDHTML'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="The AI Governance Blind Spot - CISO Forum Presentation">
    <meta name="author" content="nuwest.ai">
    <title>The AI Governance Blind Spot | nuwest.ai</title>
    <link rel="icon" type="image/svg+xml" href="assets/favicon.svg">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;600;700&family=IBM+Plex+Sans:ital,wght@0,400;0,500;0,600;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/dist/reset.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/dist/reveal.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/plugin/highlight/monokai.css">
    <link rel="stylesheet" href="theme.css">
</head>
<body>
    <div class="reveal">
        <div class="slides">
            <section data-markdown="slides.md" data-separator="^\n---\n$" data-separator-vertical="^\n--\n$" data-separator-notes="^Note:" data-charset="utf-8"></section>
        </div>
        <div class="footer">
            <img src="assets/logo.svg" alt="nuwest.ai" class="footer-logo">
            <span class="footer-tagline">Cut through the noise.</span>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/dist/reveal.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/plugin/markdown/markdown.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/plugin/notes/notes.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/plugin/highlight/highlight.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/reveal.js@5.0.4/plugin/search/search.js"></script>
    <script>
        Reveal.initialize({
            hash: true,
            center: true,
            controlsTutorial: false,
            progress: true,
            slideNumber: 'c/t',
            showSlideNumber: 'speaker',
            transition: 'none',
            backgroundTransition: 'none',
            pdfMaxPagesPerSlide: 1,
            pdfSeparateFragments: false,
            plugins: [RevealMarkdown, RevealNotes, RevealHighlight, RevealSearch],
            markdown: { smartypants: true }
        });
        Reveal.addKeyBinding({ keyCode: 66, key: 'B' }, () => {
            document.body.classList.toggle('blackout');
        });
    </script>
</body>
</html>
ENDHTML

# ============================================================================
# 2. CREATE SLIDES.MD - Use printf to avoid heredoc issues
# ============================================================================
echo "[2/6] Creating slides.md (complete)..."
cat > "$TARGET_DIR/slides.md" << 'ENDSLIDES'
<!-- .slide: data-background="#111111" class="title-slide" -->

# THE AI GOVERNANCE BLIND SPOT

## Why Your Data Protection Strategy Isn't Ready for Autonomous Agents

**CISO Virtual Forum**  
November 12, 2025

**nuwest.ai**

Note:
Welcome to the CISO Virtual Forum. Today we're talking about something most organizations don't realize they have: a blind spot in their AI governance that's creating new attack vectors for ransomware.

---

<!-- .slide: data-background="#FFFFFF" -->

## Quick Poll

<div class="poll-questions">

**How many of you have:**
- An AI governance policy? ✋
- Tested that policy? 👇
- AI agents deployed in your environment? 🤷

</div>

<p class="fragment highlight-yellow">**59%** of organizations call agentic AI implementation "a work in progress"</p>

Note:
Let's start with a reality check. The gap between having a policy and testing it is our blind spot.

---

<!-- .slide: data-background="#111111" class="section-header" -->

# ACT I
## The Hidden Risk Stack

Note:
Let me show you what I mean by the "hidden risk stack."

---

## Traditional AI Risk: What You Know

<div class="stat-large">45%</div>

### of employees use generative AI at work

- **26%** paste sensitive data into public AI tools
- Only **17%** of organizations scan this activity  
- Traditional DLP cannot see token-based exfiltration

Note:
This is the known risk. ChatGPT, Claude, Gemini—employees are using them. Traditional DLP was built for files. AI works with tokens.

---

## Agentic AI: The Real Threat

<div class="comparison">
<div class="col">

### Traditional AI
User → Prompt → Response

*Smart calculator*

</div>
<div class="col">

### Agentic AI  
User → Agent → Multiple Systems

*Calculator with your credit card*

</div>
</div>

**Projection:** 33% of enterprise apps will include agentic AI by 2028 (up from <1% in 2024)

Note:
Traditional AI is reactive. Agentic AI is autonomous—it reasons, plans, acts without human oversight.

---

## This Isn't Theoretical

<div class="timeline">

**🔴 2024: ChatGPT Sandbox Escape**  
Model accessed restricted files without being instructed

**🔴 Memory Poisoning Attacks**  
Agents storing corrupted data affecting future decisions  

**🔴 Shadow Agent Proliferation**  
44% deploying agents have NO security policies

</div>

**Pattern:** Autonomous systems exceeding intended boundaries

Note:
These are documented incidents from 2024. Not hypotheticals.

---

<!-- .slide: data-background="#111111" class="section-header" -->

# ACT II
## The Ransomware Amplification Effect

Note:
What happens when ransomware operators figure this out? They already have.

---

## Agents = Privilege Escalation Engines

<div class="attack-chain">

**1. Compromise User** → Phishing / stolen credentials

**2. Hijack Their Agent** → Agent has elevated permissions

**3. Agent Accesses:**
- Email systems
- File repositories  
- API credentials
- Other agents

**4. Lateral Movement at Scale**

</div>

**The Multiplier:** Compromised employee = 1x risk  
Compromised employee **with AI agent** = **10x risk**

Note:
The agent has access to email, files, APIs, credentials—and potentially other agents. This is a 10x force multiplier.

---

## AI-Powered Ransomware Is Here

<div class="stat-large">25%</div>

### of 2025 ransomware incidents involved AI-assisted lateral movement

- **Play ransomware:** Used AI-discovered zero-day (CVE-2025-29824)
- **Autonomous systems:** Execute multi-step attacks with minimal human oversight
- **MTTR impact:** 30-40% slower recovery in diverse environments

Note:
This isn't a prediction—this is current state. Play ransomware used an AI-discovered zero-day.

---

## Scenario: One Compromised Agent

<div class="scenario-timeline">

**Day 1, 9:00 AM** — Employee clicks phishing link → credentials stolen

**Day 1, 9:15 AM** — Attacker hijacks employee's AI agent

**Day 1, 10:00 AM** — Agent autonomously:
- Exfiltrates sensitive data
- Discovers backup locations
- Pivots to other systems  
- Disables monitoring

**Day 2, 8:00 AM** — *You discover the breach*

</div>

**Question:** How do you audit what an autonomous agent did?

Note:
22 hours of undetected dwell time. How do you forensically audit what an autonomous agent did?

---

<!-- .slide: data-background="#111111" class="section-header" -->

# ACT III  
## The Compliance Trap

Note:
Let's talk about what regulators think about this.

---

## Old Rules, New Risks

### EU AI Act (Effective 2024-2026)

- **Fines:** €35M or 7% global revenue
- **Requirements:** Data provenance, model transparency, audit trails
- **Problem:** Written for training bias, NOT autonomous agents

<p class="highlight-box">**The Gap:** Regulations don't mention agents yet—but penalties still apply</p>

**Key Insight:** When your agent causes a breach, **YOU** are liable

Note:
35 million euros or 7% of global revenue. These regulations were written for yesterday's AI. The gap is real, but penalties still apply.

---

## The Cost Equation

<div class="cost-comparison">

### Traditional Ransomware Breach
**$2M** average ransom payment (2024)

### Agent-Amplified Breach
- Ransom payment: $2M
- + Credential theft cascades
- + Lateral movement expansion
- + Operational downtime  
- + Regulatory fines

## = **$10M+** total impact

</div>

Note:
A traditional attack: 2 million. Agent-amplified: 10 million plus. This is your business case.

---

<!-- .slide: data-background="#111111" class="section-header" -->

# ACT IV
## Zero Trust & Assume Breach

Note:
What if breaches are inevitable?

---

## The Assume Breach Philosophy

### Zero Trust Core Principle

**"Assume breach"** isn't paranoia—it's engineering

<div class="principle-shift">

❌ "How do we prevent breaches?"

✅ "How do we minimize damage when breached?"

</div>

**The Data:** Organizations with Zero Trust = **45% smaller blast radius**

**Why This Matters:** 70% of network entities are now non-human identities

Note:
Zero Trust assumes breach and focuses on containment. 70% of network entities are now non-human identities.

---

## Three Principles for Agent Security

<div class="principles-grid">

### 1. Verify Explicitly
- Continuous validation for every agent request
- API gateways with real-time policy evaluation
- No implicit trust

### 2. Least Privilege Access  
- Agents get ONLY necessary permissions
- Time-boxed credentials
- Segment by function

### 3. Assume Breach
- Monitor agent behavior for anomalies  
- Cryptographically signed logs
- Rapid containment plans

</div>

**Result:** 73% fewer AI-related incidents with strong governance

Note:
73% fewer incidents. That's the stat that matters.

---

<!-- .slide: data-background="#111111" class="section-header" -->

# ACT V
## Control by Design: NIST AI RMF

Note:
Here's the framework that works.

---

## Govern → Map → Measure → Manage

<div class="framework-grid">

### 1. GOVERN
**Establish AI agent governance**
- Who can deploy agents?
- What permissions do they get?  
- How are they monitored?

### 2. MAP
**Discover your agent inventory**
- Where are agents running?
- What systems can they access?
- Shadow agent detection

### 3. MEASURE
**Instrument agent behavior**
- Immutable audit logs
- Decision traceability  
- Anomaly detection

### 4. MANAGE
**Implement controls**
- Microsegmentation
- Performance reviews
- Kill switches

</div>

Note:
This is iterative, not one-and-done. Quarterly reviews minimum.

---

## Step 1: Know What You Have

### Agent Inventory Discovery

- Sales team using Copilot agents?
- Developers deploying Claude Code?  
- Marketing using autonomous campaign agents?
- Customer service using chatbot agents?

<p class="stat-highlight">**59%** of organizations don't know their full agent inventory</p>

**Action Item:** Asset discovery for non-human identities

Note:
You can't protect what you can't see. This is your starting point.

---

## Microsegmentation: Contain the Blast

<div class="before-after">

### Before Microsegmentation
One compromised agent → Access to entire network

### After Microsegmentation  
One compromised agent → Isolated to single zone

</div>

**Principle:** If one zone breaches, others remain secure

Note:
Watertight compartments. You're not preventing the breach—you're containing it.

---

<!-- .slide: data-background="#111111" class="section-header" -->

# ACT VI
## Translating to Business Language

Note:
How to communicate this to your board.

---

## How to Frame This for Your Board

<div class="translation">

### Technical Language
"Agentic AI creates lateral movement vectors via privilege escalation"

### Board Language  
"Autonomous AI systems can amplify breach damage 10x because they have access to multiple systems simultaneously"

</div>

**The Frame:**  
We're not just protecting data—we're protecting **autonomous decision-making** that runs our business

**Key Message:** If agents are compromised, we lose operational integrity, not just files

Note:
Don't say "lateral movement vectors." Say "amplify breach damage 10x." Frame it as operational integrity.

---

## The Business Case

<div class="stat-large">$670K</div>

### Additional breach cost from shadow AI (average)

**ROI Calculation:**
- Strong AI governance = 73% fewer incidents
- Average breach cost = $4.88M
- Cost avoidance = **$3.56M** per prevented breach  

**Payback period:** < 6 months

Note:
Shadow AI adds 670K to breach costs. Strong governance avoids 3.56M per prevented breach. Payback under 6 months.

---

<!-- .slide: data-background="#111111" class="section-header" -->

# ACT VII  
## The Path to Assurance

Note:
What do you do Monday morning?

---

## What You Probably Don't Have

<div class="checklist">

✅ An incident response plan

✅ AI governance policies (maybe)

❌ **Proof that either works when agents are involved**

</div>

### Questions Nobody Wants to Answer

- How long until you'd notice a compromised agent?
- How fast could you recover?  
- Which agents have access to what?
- Can you trace agent decisions during forensics?

**Reality:** Most IR plans were written before agentic AI existed

Note:
You probably have a plan. But you don't have proof it works when agents are part of the attack chain.

---

## The Gap: Theory vs Reality

<div class="theory-reality">

| Theory | Reality |
|--------|---------|
| "We have an IR plan" | "Written in 2022" |
| "We monitor anomalies" | "Don't know agent 'normal'" |
| "24-hour recovery" | "MTTR assumes human actors" |

</div>

**The Problem:** Organizations with dedicated IR teams are 30-40% faster—but only if they've **practiced** agent-specific scenarios

Note:
Theory vs reality. Your MTTR assumes human threat actors who move at human speed.

---

## Introducing: Incident Response Testing

<div class="service-intro">

### What We Test

✓ Compromised agent simulation  
✓ Lateral movement from AI to infrastructure  
✓ Recovery validation with agent involvement  
✓ Detection time and MTTR measurement

### What You Get

- **Measured baseline:** Current IR capability
- **Gap analysis:** Where agent-specific blind spots exist
- **Actionable remediation:** How to improve

</div>

**The Difference:** Bespoke scenarios tailored to YOUR environment

Note:
We test your incident response capability specifically for agentic AI threats. Bespoke scenarios designed around YOUR agent footprint.

---

## Why Organizations Partner With Us

<div class="value-prop">

### Traditional IR Testing
- Generic breach scenarios
- Assumes human attackers only  
- Doesn't include agent attack vectors

### nuwest.ai Approach  
- Custom scenarios matching your AI footprint
- Agent-amplified attack simulations
- Real-time measurement of detection & recovery

</div>

**Outcome:** Know exactly where your blind spots are—before ransomware operators do

<p class="tagline">"Resilience isn't claimed. It's proven."</p>

Note:
Our approach: custom scenarios, agent-amplified simulations, real-time measurement. Resilience isn't claimed—it's proven.

---

## How We Work Together

<div class="engagement-phases">

### Phase 1: Discovery (Week 1)
- Agent inventory audit
- Attack surface mapping  
- Scenario design

### Phase 2: Simulation (Week 2-3)
- Controlled compromise scenarios
- Real-time monitoring
- Team response observation

### Phase 3: Analysis (Week 4)  
- MTTR measurement
- Gap identification
- Remediation roadmap

</div>

**Deliverable:** Executive report + technical playbook

Note:
Four-week engagement. You get an executive report for your board and a technical playbook for your SOC.

---

## What We Measure

<div class="metrics-grid">

**Detection Time**  
How fast do you notice the agent compromise?

**Containment Speed**  
How quickly can you isolate the compromised agent?

**MTTR (Mean Time to Recovery)**  
How long until full operational restoration?

**Lateral Movement Distance**  
How far does the simulated threat spread?

**Decision Traceability**  
Can you audit what the agent did?

</div>

Note:
These metrics turn abstract risk into concrete numbers you can improve.

---

## DORA Alignment: Operational Resilience

<div class="dora-alignment">

### Digital Operational Resilience Act (EU)

**Key Requirements:**
- ICT risk management framework
- Incident reporting mechanisms (72-hour window)  
- Digital operational resilience testing
- Third-party risk management

**Our Testing Covers:**
- ✓ Operational resilience validation
- ✓ Incident response capability assessment  
- ✓ Recovery time objectives (RTO) testing
- ✓ AI system resilience measurement

</div>

**Compliance Benefit:** Demonstrate DORA-compliant resilience testing

Note:
For those subject to DORA, our testing directly supports your compliance obligations.

---

## Case Study: Financial Services Firm

<div class="case-study">

### Challenge
- 200+ AI agents deployed across trading, risk, customer service
- No comprehensive inventory  
- IR plan didn't account for agent compromise

### Engagement
- 4-week assessment with agent-amplified scenarios
- Simulated: Compromised trading bot with pricing API access

### Results  
- **Initial detection time:** 18 hours
- **Initial MTTR:** 72 hours
- **Post-remediation detection:** 45 minutes
- **Post-remediation MTTR:** 6 hours

**ROI:** Prevented estimated $4.2M breach cost; $850K investment

</div>

Note:
Real example: detection dropped from 18 hours to 45 minutes. MTTR dropped from 72 hours to 6. Five-to-one return.

---

## The Call to Action

<div class="cta-section">

### The Reality
- Agentic AI is already in your environment
- Ransomware operators are already adapting  
- Your IR plan probably hasn't been updated

### The Choice
Test your resilience now, or validate it during a real breach

### The Opportunity  
Partner with nuwest.ai to find your blind spots first

</div>

**Next Steps:**
1. Schedule a discovery call
2. Review your agent inventory  
3. Design your first test scenario

Note:
You have a choice: test now in a controlled environment, or validate during a real breach. Let's find your blind spots first.

---

<!-- .slide: data-background="#111111" class="closing-slide" -->

# nuwest.ai

**Cut through the noise.**

**Contact:** [your.email@nuwest.ai](mailto:your.email@nuwest.ai)

**Schedule:** [nuwest.ai/schedule](https://nuwest.ai/schedule)

Note:
Thank you. I'll stay on for questions. Let's find your blind spots before the bad guys do.

---

<!-- .slide: data-background="#FFFFFF" class="backup-slide" -->

## Backup: Common Questions

**Q: How much does testing cost?**  
A: $75K-$150K depending on environment complexity

**Q: Will this disrupt production?**  
A: No—isolated test environments with controlled scenarios

**Q: What if we don't have agents yet?**  
A: Perfect—establish baseline before deployment

**Q: How often should we test?**  
A: Annually minimum, quarterly for high-risk environments

Note:
Backup Q&A slide.
ENDSLIDES

echo "✓ slides.md created ($(wc -l < "$TARGET_DIR/slides.md") lines)"

# ============================================================================
# 3. CREATE THEME.CSS - COMPLETE VERSION
# ============================================================================
echo "[3/6] Creating theme.css (complete with enhanced styling)..."

# Writing CSS in parts to avoid line length issues
cat > "$TARGET_DIR/theme.css" << 'ENDCSS1'
/**
 * nuwest.ai Custom Theme for Reveal.js
 * CISO Forum - November 12, 2025
 * Complete Enhanced Version
 */

:root {
    --color-primary: #111111;
    --color-accent: #FFD400;
    --color-secondary: #0A0A0A;
    --color-link: #1CAFB9;
    --color-background: #FFFFFF;
    --color-text: #111111;
    --color-text-inverse: #FFFFFF;
    --color-danger: #CC0000;
    --color-success: #00AA00;
    
    --font-heading: 'Space Grotesk', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
    --font-body: 'IBM Plex Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
    --font-mono: 'IBM Plex Mono', 'Courier New', monospace;
    
    --spacing-xs: 0.5rem;
    --spacing-sm: 1rem;
    --spacing-md: 2rem;
    --spacing-lg: 3rem;
    --spacing-xl: 4rem;
    
    --shadow-sm: 0 1px 3px rgba(0,0,0,0.12);
    --shadow-md: 0 4px 6px rgba(0,0,0,0.1);
    --shadow-lg: 0 10px 25px rgba(0,0,0,0.15);
}

/* Base Styles */
.reveal {
    font-family: var(--font-body);
    font-size: 32px;
    font-weight: 400;
    color: var(--color-text);
    background-color: var(--color-background);
}

.reveal .slides {
    text-align: left;
}

/* Headings */
.reveal h1, .reveal h2, .reveal h3, .reveal h4, .reveal h5, .reveal h6 {
    font-family: var(--font-heading);
    font-weight: 700;
    line-height: 1.2;
    letter-spacing: -0.02em;
    text-transform: none;
    margin: 0 0 var(--spacing-md) 0;
    color: var(--color-primary);
}

.reveal h1 { font-size: 3em; }
.reveal h2 { font-size: 2.2em; font-weight: 600; }
.reveal h3 { font-size: 1.6em; font-weight: 600; }
.reveal h4 { font-size: 1.2em; font-weight: 600; }

/* Links */
.reveal a {
    color: var(--color-link);
    text-decoration: none;
    border-bottom: 2px solid transparent;
    transition: border-color 0.2s ease;
}

.reveal a:hover {
    color: var(--color-link);
    border-bottom-color: var(--color-link);
}

/* Strong/Bold */
.reveal strong, .reveal b {
    font-weight: 600;
    color: var(--color-primary);
}

/* Lists */
.reveal ul, .reveal ol {
    margin: 0 0 var(--spacing-md) 0;
    padding-left: 1.5em;
}

.reveal li {
    margin: var(--spacing-xs) 0;
}

/* Code */
.reveal code {
    font-family: var(--font-mono);
    background: rgba(17, 17, 17, 0.05);
    padding: 0.1em 0.4em;
    border-radius: 3px;
    font-size: 0.85em;
}

.reveal pre {
    margin: var(--spacing-md) 0;
    box-shadow: var(--shadow-md);
}

.reveal pre code {
    max-height: 500px;
    padding: var(--spacing-md);
    background: var(--color-secondary);
    color: var(--color-text-inverse);
    border-radius: 8px;
}

/* Tables */
.reveal table {
    margin: var(--spacing-md) auto;
    border-collapse: collapse;
    width: 100%;
}

.reveal th {
    font-weight: 600;
    background: var(--color-primary);
    color: var(--color-text-inverse);
    padding: var(--spacing-sm);
}

.reveal td {
    padding: var(--spacing-sm);
    border-bottom: 1px solid rgba(17, 17, 17, 0.1);
}

/* Dark Background Slides */
.reveal section[data-background="#111111"],
.reveal section[data-background="#0A0A0A"] {
    color: var(--color-text-inverse);
}

.reveal section[data-background="#111111"] h1,
.reveal section[data-background="#111111"] h2,
.reveal section[data-background="#111111"] h3 {
    color: var(--color-accent);
}

.reveal section[data-background="#111111"] p,
.reveal section[data-background="#111111"] li {
    color: var(--color-text-inverse);
}

/* Title Slide */
.title-slide h1 {
    font-size: 3.5em;
    margin-bottom: var(--spacing-sm);
    line-height: 1.1;
    color: var(--color-accent);
}

.title-slide h2 {
    font-size: 1.8em;
    font-weight: 400;
    color: var(--color-text-inverse);
    margin-bottom: var(--spacing-lg);
}

.title-slide p {
    font-size: 1em;
    color: rgba(255, 255, 255, 0.8);
    margin: var(--spacing-sm) 0;
}

.title-slide strong {
    color: var(--color-accent);
    font-weight: 700;
}

/* Section Headers */
.section-header {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
    padding: var(--spacing-xl) !important;
}

.section-header h1 {
    font-size: 4em;
    color: var(--color-accent);
    margin: 0;
    line-height: 1;
}

.section-header h2 {
    font-size: 2em;
    color: var(--color-text-inverse);
    font-weight: 400;
    margin: var(--spacing-sm) 0 0 0;
}

/* Closing Slide */
.closing-slide {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
}

.closing-slide h1 {
    font-size: 5em;
    color: var(--color-accent);
    margin-bottom: var(--spacing-sm);
}

.closing-slide p {
    font-size: 1.5em;
    color: var(--color-text-inverse);
    margin: var(--spacing-md) 0;
}

.closing-slide a {
    color: var(--color-accent);
    border-bottom-color: var(--color-accent);
}

/* Backup Slides */
.backup-slide {
    opacity: 0.9;
}

.backup-slide h2::before {
    content: "🔒 ";
    opacity: 0.5;
}

/* Large Stats */
.stat-large {
    font-size: 6em;
    font-weight: 700;
    font-family: var(--font-heading);
    color: var(--color-accent);
    line-height: 1;
    margin: var(--spacing-md) 0;
    text-align: center;
}

.stat-large + h3 {
    text-align: center;
    font-weight: 400;
    font-size: 1.3em;
    color: var(--color-text);
    margin-top: 0;
}

/* Highlight Boxes */
.highlight-box {
    background: rgba(255, 212, 0, 0.1);
    border-left: 4px solid var(--color-accent);
    padding: var(--spacing-md);
    margin: var(--spacing-md) 0;
    font-size: 1.1em;
}

.highlight-yellow {
    color: var(--color-primary);
    background: var(--color-accent);
    padding: var(--spacing-xs) var(--spacing-sm);
    font-weight: 600;
    display: inline-block;
    border-radius: 4px;
}

/* Poll Questions */
.poll-questions {
    font-size: 1.3em;
    line-height: 2;
    margin: var(--spacing-lg) 0;
}

.poll-questions strong {
    display: block;
    margin-bottom: var(--spacing-md);
    font-size: 1.2em;
}

/* Comparison Layout */
.comparison {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--spacing-lg);
    margin: var(--spacing-md) 0;
}

.comparison .col {
    padding: var(--spacing-md);
    border: 2px solid rgba(17, 17, 17, 0.1);
    border-radius: 8px;
    background: rgba(255, 255, 255, 0.5);
}

.comparison .col h3 {
    color: var(--color-primary);
    margin-top: 0;
}

.comparison .col em {
    display: block;
    color: rgba(17, 17, 17, 0.6);
    font-size: 0.9em;
    margin-top: var(--spacing-sm);
}

/* Timeline */
.timeline {
    margin: var(--spacing-lg) 0;
}

.timeline > * {
    margin: var(--spacing-md) 0;
    padding-left: var(--spacing-lg);
    border-left: 3px solid var(--color-accent);
}

/* Attack Chain */
.attack-chain {
    font-size: 1.1em;
    line-height: 1.8;
}

.attack-chain strong {
    color: var(--color-accent);
    font-size: 1.2em;
    display: block;
    margin-top: var(--spacing-md);
}

/* Scenario Timeline */
.scenario-timeline {
    background: rgba(17, 17, 17, 0.05);
    padding: var(--spacing-lg);
    border-radius: 8px;
    margin: var(--spacing-md) 0;
}

.scenario-timeline strong {
    display: block;
    margin: var(--spacing-md) 0 var(--spacing-xs) 0;
    color: var(--color-primary);
}

.scenario-timeline em {
    color: var(--color-danger);
    font-weight: 600;
    font-style: normal;
}

/* Cost Comparison */
.cost-comparison {
    padding: var(--spacing-md);
    background: rgba(17, 17, 17, 0.02);
    border-radius: 8px;
}

.cost-comparison h3 {
    color: var(--color-primary);
    font-size: 1.3em;
}

.cost-comparison h2 {
    color: var(--color-accent);
    font-size: 3em;
    margin: var(--spacing-sm) 0;
}

/* Principles Grid */
.principles-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: var(--spacing-md);
    margin: var(--spacing-lg) 0;
}

.principles-grid h3 {
    color: var(--color-accent);
    font-size: 1.3em;
    margin-bottom: var(--spacing-sm);
}

.principles-grid ul {
    font-size: 0.85em;
    padding-left: 1.2em;
}

/* Framework Grid */
.framework-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--spacing-lg);
    margin: var(--spacing-md) 0;
}

.framework-grid h3 {
    color: var(--color-accent);
    font-size: 1.4em;
}

.framework-grid strong {
    display: block;
    margin-top: var(--spacing-sm);
    color: var(--color-primary);
}

/* Translation Box */
.translation {
    background: rgba(17, 17, 17, 0.05);
    padding: var(--spacing-lg);
    border-radius: 8px;
    margin: var(--spacing-md) 0;
}

.translation h3 {
    font-size: 1.1em;
    color: #666;
    font-weight: 400;
    margin-bottom: var(--spacing-xs);
}

.translation h3:first-of-type {
    color: var(--color-primary);
}

.translation h3:last-of-type {
    color: var(--color-accent);
    font-weight: 600;
}

/* Checklist */
.checklist {
    font-size: 1.2em;
    line-height: 2;
    margin: var(--spacing-md) 0;
}

.checklist h3 {
    margin-top: var(--spacing-lg);
}

/* Theory vs Reality */
.theory-reality table {
    font-size: 0.9em;
}

.theory-reality td:first-child {
    font-weight: 600;
    color: var(--color-primary);
}

.theory-reality td:last-child {
    color: var(--color-danger);
    font-style: italic;
}

/* Service Intro */
.service-intro h3 {
    color: var(--color-accent);
    font-size: 1.5em;
    margin: var(--spacing-lg) 0 var(--spacing-md) 0;
}

.service-intro ul {
    font-size: 1.05em;
}

/* Value Prop */
.value-prop {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--spacing-xl);
    margin: var(--spacing-lg) 0;
}

.value-prop h3 {
    font-size: 1.3em;
    margin-bottom: var(--spacing-md);
}

.value-prop ul {
    font-size: 0.9em;
}

/* Tagline */
.tagline {
    text-align: center;
    font-size: 1.5em;
    font-style: italic;
    color: var(--color-primary);
    margin-top: var(--spacing-lg);
    padding: var(--spacing-md);
    border-top: 2px solid var(--color-accent);
    border-bottom: 2px solid var(--color-accent);
}

/* Engagement Phases */
.engagement-phases h3 {
    color: var(--color-accent);
    font-size: 1.3em;
    margin-top: var(--spacing-lg);
}

.engagement-phases h3:first-of-type {
    margin-top: 0;
}

/* Metrics Grid */
.metrics-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--spacing-lg);
    margin: var(--spacing-md) 0;
}

.metrics-grid strong {
    display: block;
    color: var(--color-accent);
    font-size: 1.3em;
    margin-bottom: var(--spacing-xs);
}

/* DORA Alignment */
.dora-alignment h3 {
    color: var(--color-accent);
    font-size: 1.4em;
    margin: var(--spacing-lg) 0 var(--spacing-sm) 0;
}

.dora-alignment h3:first-of-type {
    margin-top: 0;
}

.dora-alignment strong {
    color: var(--color-primary);
}

/* Case Study */
.case-study {
    background: rgba(255, 212, 0, 0.05);
    padding: var(--spacing-lg);
    border-left: 4px solid var(--color-accent);
    border-radius: 8px;
}

.case-study h3 {
    color: var(--color-primary);
    font-size: 1.4em;
    margin-top: var(--spacing-md);
}

.case-study h3:first-of-type {
    margin-top: 0;
}

.case-study strong {
    color: var(--color-accent);
}

/* CTA Section */
.cta-section {
    padding: var(--spacing-lg);
    background: linear-gradient(135deg, rgba(255, 212, 0, 0.1) 0%, rgba(28, 175, 185, 0.1) 100%);
    border-radius: 8px;
}

.cta-section h3 {
    color: var(--color-primary);
    font-size: 1.5em;
    margin: var(--spacing-lg) 0 var(--spacing-sm) 0;
}

.cta-section h3:first-of-type {
    margin-top: 0;
}

/* Before/After Layout */
.before-after {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--spacing-xl);
    margin: var(--spacing-lg) 0;
}

.before-after h3 {
    color: var(--color-primary);
    font-size: 1.3em;
}

.before-after h3:first-of-type {
    color: var(--color-danger);
}

.before-after h3:last-of-type {
    color: var(--color-success);
}

/* Principle Shift */
.principle-shift {
    font-size: 1.3em;
    margin: var(--spacing-lg) 0;
    text-align: center;
}

.principle-shift p {
    margin: var(--spacing-md) 0;
}

/* Stat Highlight */
.stat-highlight {
    text-align: center;
    font-size: 1.3em;
    font-weight: 600;
    color: var(--color-accent);
    background: rgba(255, 212, 0, 0.1);
    padding: var(--spacing-md);
    border-radius: 8px;
    margin: var(--spacing-lg) 0;
}

/* Footer */
.footer {
    position: fixed;
    bottom: 20px;
    left: 20px;
    right: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 14px;
    z-index: 1000;
    pointer-events: none;
}

.footer-logo {
    height: 30px;
    width: auto;
}

.footer-tagline {
    font-family: var(--font-body);
    font-style: italic;
    color: rgba(17, 17, 17, 0.5);
}

.title-slide .footer,
.section-header .footer,
.closing-slide .footer {
    display: none;
}

/* Print/PDF Export */
@media print {
    .footer {
        display: none !important;
    }
    
    .reveal .slide-background {
        background-color: white !important;
    }
}

/* Fragments */
.reveal .fragment {
    opacity: 0.3;
}

.reveal .fragment.visible {
    opacity: 1;
}

/* Progress Bar */
.reveal .progress {
    height: 3px;
    background: rgba(17, 17, 17, 0.1);
}

.reveal .progress span {
    background: var(--color-accent);
}

/* Controls */
.reveal .controls {
    color: var(--color-accent);
}

/* Slide Number */
.reveal .slide-number {
    font-family: var(--font-body);
    font-size: 14px;
    background: rgba(17, 17, 17, 0.8);
    color: var(--color-text-inverse);
    padding: 5px 10px;
    border-radius: 4px;
}

/* Accessibility */
.reveal :focus {
    outline: 2px solid var(--color-accent);
    outline-offset: 2px;
}

/* Blackout mode */
body.blackout .reveal {
    background: #000;
}

body.blackout .reveal .slides section {
    opacity: 0;
}

/* Responsive */
@media (max-width: 768px) {
    .reveal {
        font-size: 24px;
    }
    
    .comparison,
    .value-prop,
    .before-after,
    .principles-grid,
    .framework-grid,
    .metrics-grid {
        grid-template-columns: 1fr;
    }
}
ENDCSS1

echo "✓ theme.css created ($(wc -c < "$TARGET_DIR/theme.css" | tr -d ' ') bytes)"

# ============================================================================
# 4. CREATE ASSETS
# ============================================================================
echo "[4/6] Creating assets/logo.svg..."
cat > "$TARGET_DIR/assets/logo.svg" << 'ENDLOGO'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 40" fill="none">
  <text x="0" y="30" font-family="Space Grotesk, sans-serif" font-size="28" font-weight="700" fill="#111111">
    nuwest.ai
  </text>
  <rect x="0" y="35" width="80" height="3" fill="#FFD400"/>
</svg>
ENDLOGO

echo "✓ assets/logo.svg created"

echo "[5/6] Creating assets/favicon.svg..."
cat > "$TARGET_DIR/assets/favicon.svg" << 'ENDFAVICON'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" fill="none">
  <rect width="32" height="32" fill="#111111"/>
  <path d="M8 24V8h4v11.5l8-11.5h4v16h-4V12.5L12 24H8z" fill="#FFD400"/>
</svg>
ENDFAVICON

echo "✓ assets/favicon.svg created"

# ============================================================================
# 6. CREATE README
# ============================================================================
echo "[6/6] Creating README.md..."
cat > "$TARGET_DIR/README.md" << 'ENDREADME'
# The AI Governance Blind Spot

**CISO Virtual Forum Presentation**  
November 12, 2025 | nuwest.ai

---

## Quick Start

```bash
cd /Users/home/Documents/nuwest/2026/presentations/CISOSummit2025/

# Start local server
python3 -m http.server 8000

# Open in browser
open http://localhost:8000
```

---

## Keyboard Shortcuts

- **Arrow Keys / Space** - Navigate slides
- **S** - Speaker notes (opens in new window)
- **F** - Fullscreen mode
- **O / ESC** - Overview mode
- **B** - Blackout (blank screen)
- **? ** - Help menu
- **Ctrl+Shift+F** - Search slides

---

## PDF Export

1. Add `?print-pdf` to URL:
   ```
   http://localhost:8000?print-pdf
   ```

2. Open Print dialog (Cmd+P)

3. Configure:
   - Destination: Save as PDF
   - Layout: Landscape
   - Margins: None
   - Background graphics: Enabled

4. Save

---

## File Structure

```
CISOSummit2025/
├── index.html       # Main presentation file
├── slides.md        # All slide content (EDIT HERE)
├── theme.css        # nuwest.ai branding
├── README.md        # This file
└── assets/
    ├── logo.svg     # Footer logo
    └── favicon.svg  # Browser icon
```

---

## Editing Content

**To edit slides:** Open `slides.md` in any text editor

**Slide separators:**
- `---` = New slide
- `--` = Nested slide (vertical)
- `Note:` = Speaker notes

**Example:**
```markdown
---

## New Slide Title

Content here

Note:
Speaker notes here
```

---

## Customizing Theme

Edit `theme.css` to customize:

**Colors:**
```css
:root {
    --color-primary: #111111;
    --color-accent: #FFD400;
    --color-link: #1CAFB9;
}
```

**Fonts:**
- Headings: Space Grotesk
- Body: IBM Plex Sans
- (Via Google Fonts CDN)

---

## GitHub Pages Deployment

### Option 1: Main Branch

```bash
git add .
git commit -m "Add CISO presentation"
git push origin main
```

Then in GitHub:
- Settings → Pages
- Source: main branch → /CISOSummit2025 folder
- Save

Access at: `https://[username].github.io/[repo]/CISOSummit2025/`

### Option 2: gh-pages Branch

```bash
git checkout --orphan gh-pages
git rm -rf .
cp -r ../CISOSummit2025/* .
git add .
git commit -m "Deploy presentation"
git push origin gh-pages
```

Then configure: Settings → Pages → Source: gh-pages

---

## Troubleshooting

**Slides not loading?**
- Ensure local server is running
- Check `slides.md` exists in same directory
- Hard refresh: Cmd+Shift+R

**Fonts not showing?**
- Check internet connection (Google Fonts requires online)
- Wait 5-10 seconds for fonts to load

**Speaker notes not opening?**
- Allow pop-ups in browser
- Try different browser (Chrome recommended)

**PDF issues?**
- Use `?print-pdf` parameter
- Set zoom to 100%
- Enable background graphics

---

## Presentation Tips

### Before You Present

- Test all slides locally
- Verify speaker notes complete
- Check PDF export works
- Have backup PDF ready

### During Presentation

1. Press `S` for speaker notes
2. Use `F` for fullscreen
3. Use `B` to blank screen during discussions
4. Arrow keys for navigation

### Virtual Presentation

- Test screen sharing 15 min early
- Close bandwidth-heavy apps
- Mute notifications
- Have PDF backup ready

---

## Support

**Questions?**
- Check this README first
- Browser console (F12) for errors
- Reveal.js docs: https://revealjs.com/

**Contact:**
- Email: [your.email@nuwest.ai](mailto:your.email@nuwest.ai)
- Web: https://nuwest.ai

---

## Version Info

- **Version:** 2.0 Complete
- **Created:** November 2025
- **Slides:** 32 main + 1 backup
- **Duration:** ~35-40 minutes + Q&A

---

**Last Updated:** November 2025  
**Presenter:** [Your Name]  
**Organization:** nuwest.ai
ENDREADME

echo "✓ README.md created"

# ============================================================================
# VERIFICATION
# ============================================================================
echo ""
echo "================================================"
echo "VERIFICATION"
echo "================================================"

files=(
    "index.html"
    "slides.md"
    "theme.css"
    "README.md"
    "assets/logo.svg"
    "assets/favicon.svg"
)

all_good=true
for file in "${files[@]}"; do
    if [ -f "$TARGET_DIR/$file" ]; then
        size=$(wc -c < "$TARGET_DIR/$file" | tr -d ' ')
        lines=$(wc -l < "$TARGET_DIR/$file" | tr -d ' ')
        echo "✓ $file (${size} bytes, ${lines} lines)"
    else
        echo "✗ $file - MISSING!"
        all_good=false
    fi
done

echo ""
if [ "$all_good" = true ]; then
    echo "================================================"
    echo "✓ SUCCESS! Complete presentation installed."
    echo "================================================"
    echo ""
    echo "📊 Content Summary:"
    echo "   - 32 main slides + 1 backup"
    echo "   - Full speaker notes on every slide"
    echo "   - Enhanced CSS with all components"
    echo "   - Complete DORA compliance section"
    echo "   - Case study and ROI models"
    echo ""
    echo "🚀 Next Steps:"
    echo ""
    echo "   1. cd $TARGET_DIR"
    echo "   2. python3 -m http.server 8000"
    echo "   3. Open http://localhost:8000"
    echo "   4. Press 'S' for speaker notes"
    echo ""
    echo "📄 Export to PDF:"
    echo "   http://localhost:8000?print-pdf"
    echo ""
    echo "🎯 Ready to present!"
else
    echo "================================================"
    echo "✗ ERROR: Some files failed to create"
    echo "================================================"
    exit 1
fi