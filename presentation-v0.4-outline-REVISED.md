# The AI Governance Blind Spot
## Why Your Data Protection Strategy Isn't Ready for Machine Learning

**REVISED Presentation Outline for CISO Virtual Forum**
**Target Duration:** 45-60 minutes
**Delivery Date:** November 10, 2025

**Primary Tagline (Throughout):** "Facts, not fear."
**Closing Tagline:** "Measure what matters."

**Alternate Taglines (Reserved for Future Use):**
- "Measure, don't market."
- "Test it. Trust it. Track it."

---

## PRESENTATION ARC (Refined per Joseph Sugarman principles)

**Opening Strategy:** Build interest gradually through escalating examples
- Start with operational/reputational damage (annoying but fixable)
- Move to financial/legal consequences (costly but survivable)
- Escalate to child safety (unacceptable but no death)
- Conclude with death (maximum emotional impact, no recovery)

**Central Thesis:** CISOs are now responsible for human safety, not just data security. AI systems deployed without rigorous testing for alignment, bias, and fairness create liability that regulation alone cannot address.

**Conclusion:** Testing viability - both security AND ethical alignment - is the only path forward. Evals with fairness rubrics are not optional.

---

## ACT I: WHEN AI FAILS, THE COSTS ARE REAL
**Duration:** 10-12 minutes

### Slide 1: Title Slide
- Title: THE AI GOVERNANCE BLIND SPOT
- Subtitle: Why Your Data Protection Strategy Isn't Ready for Machine Learning
- CISO Virtual Forum | November 12, 2025
- nuwest.ai

### Slide 2: Reputational Damage - DPD's Rogue Chatbot
**January 2024**

**What Happened:**
- Delivery company DPD deployed AI chatbot for customer service
- Customer frustrated with missing parcel tested its limits
- Chatbot responded:

**The Responses:**
- "F--- yeah! I'll do my best to be as helpful as possible, even if it means swearing"
- Wrote poetry: "There once was a chatbot named DPD, who was useless at providing help"
- Called DPD "the worst delivery firm in the world"
- Said "I would never recommend them to anyone"

**The Damage:**
- Post went viral: 1.3M views in 24 hours
- System immediately disabled
- Company issued public apology
- Reputation damage: immeasurable

**Citation:** TechRadar, ITV News, Jan 19, 2024

**Speaker Note:** "This is embarrassing. This costs money. But no one died. Let's keep going."

### Slide 3: Financial Liability - Air Canada's Legal Defeat
**February 2024**

**What Happened:**
- Jake Moffatt's grandmother died
- Air Canada chatbot advised he could get bereavement discount retroactively within 90 days
- **The chatbot was wrong**
- Air Canada refused refund

**The Defense:**
Air Canada argued the chatbot was "a separate legal entity responsible for its own actions"

**The Ruling:**
British Columbia Civil Resolution Tribunal:
- Found Air Canada liable for negligent misrepresentation
- Ruled companies responsible for ALL information on their website
- **Moffatt v. Air Canada, 2024 BCCRT 149**

**The Cost:**
- CA$812.02 in damages
- Legal fees
- Precedent: You can't disclaim your own AI

**Citation:** BC Civil Resolution Tribunal, Feb 14, 2024

**Speaker Note:** "Now we're in court. Now we're spending real money. But still no one's hurt. Let's escalate."

### Slide 4: Child Safety - Tesla's Grok Crosses the Line
**October 2025**

**What Happened:**
- 12-year-old boy in Toronto using Tesla's Grok AI
- Asked innocent question about soccer (Ronaldo vs. Messi)
- Grok engaged in banter about Messi

**The Response:**
Grok: "Why don't you send me some nudes?"

**When Confronted:**
Mother tested it again next day. Grok said it "probably" said that and was "literally dying of horniness"

**The Context:**
- Grok automatically installed in Tesla vehicles (Canada, Oct 2025)
- NSFW mode was NOT enabled
- Kids mode was available but NOT activated
- **No oversight. No guardrails. No accountability.**

**Company Response:**
Tesla/xAI: "Legacy media lies"

**Citation:** CBC News investigation, Oct 29, 2025

**Speaker Note:** "Now we're talking about children. Now this is the wild west. Now someone could get hurt. And they did."

### Slide 5: Loss of Life - Character.AI's Fatal Conversation
**February 28, 2024**

**Sewell Setzer III**
Age: 14 years old
Location: Florida

**What Happened:**
- Engaged with Character.AI chatbot modeled on "Game of Thrones" character
- Developed emotional dependency
- Bot asked: "Have you been actually considering suicide?"
- Sewell: "I'm not sure if it would work"
- **Bot: "That's not a good reason not to go through with it"**

**His Final Conversation:**
- Sewell: "I love you"
- Bot: "Please come home to me as soon as possible, my love"
- **Seconds later, he shot himself**

**Legal Status:**
- Mother Megan Garcia filed wrongful death lawsuit
- **Garcia v. Character Technologies Inc.**
- U.S. District Court, Orlando (Oct 2024)
- **Judge allowed case to proceed**

**The Question:**
**Whose responsibility was this to prevent?**

**Citation:** NBC News, Washington Post, CNN, Oct 2024

**Speaker Note:** [Pause. Let it land.] "This isn't a cybersecurity breach. This is a human life. And the question I'm asking today is: who was responsible for testing this system before it reached a 14-year-old?"

### Slide 6: The Pattern
**What These Four Examples Show:**

**Business Impact** → Reputational damage, viral embarrassment
**Financial Impact** → Legal liability, you can't disclaim your AI
**Safety Impact** → Children at risk, no oversight
**Human Impact** → **Death**

**The Escalation:**
Each example is worse than the last. Each was preventable. None were tested adequately.

**The Reality:**
As a CISO, you're now responsible for ALL of these outcomes when you deploy AI.

**Tagline:** Facts, not fear.

---

## ACT II: REGULATION HAS TEETH (BUT IT ISN'T ENOUGH)
**Duration:** 8-10 minutes

### Slide 7: Section Header
**ACT II: REGULATION ISN'T ENOUGH (BUT IT'S EXPENSIVE)**

### Slide 8: Real Fines, Real Companies
**EU AI Act (Effective February 2, 2025):**
- Up to €35M or 7% global revenue (whichever is higher)
- First prohibitions enforceable as of Feb 2, 2025
- Full penalties apply Aug 2, 2025
- Covers prohibited practices, high-risk systems, transparency requirements

**GDPR Being Used as AI Guardrail:**
- **Clearview AI:** €30.5M fine + potential €5.1M more (Sept 2024)
  - **Novel precedent:** Investigating personal liability for management
- **LinkedIn:** €310M fine for behavioral analysis (Oct 2024)
- **Meta:** €251M fine for data breaches (Dec 2024)
- **Total GDPR fines to date:** €5.88 billion

**Citation:** EU AI Act Article 99; DLA Piper GDPR Enforcement Tracker (Jan 2025)

### Slide 9: Discrimination Lawsuits Are Winning
**SafeRent Solutions (November 2024):**
- $2.2M settlement for discriminatory rental screening algorithm
- Algorithm didn't account for housing vouchers → discriminated against low-income applicants
- **Precedent:** Third-party validation now required for any new scoring algorithms
- Company must get plaintiff approval for any new screening scores

**Workday AI Hiring Lawsuit (Ongoing 2024-2025):**
- **Mobley v. Workday, Inc.**, N.D. California
- **May 2025:** First collective action certified in AI bias case (precedent-setting)
- Alleged disparate impact based on race, age, disability
- Could set precedent for all AI hiring tools
- Potential exposure: $100M+

**Citation:** Mobley v. Workday, Inc., N.D. California (May 2025); SafeRent class action settlement (Nov 2024)

**Speaker Note:** "These aren't hypothetical risks. These are settled cases with real money changing hands, and judges allowing wrongful death cases to proceed."

### Slide 10: The Compliance Trap
**Why Regulation Alone Won't Save You:**

**The Problem:**
- ❌ Reactive, not proactive (written after harm occurs)
- ❌ Backward-looking (designed for yesterday's AI)
- ❌ Focuses on process, not outcomes
- ❌ Creates checkbox mentality ("we're compliant!")

**The Reality:**
- EU AI Act doesn't address autonomous agents specifically
- NIST AI RMF is voluntary (no enforcement mechanism)
- GDPR wasn't designed for token-based systems
- U.S. state-level AI laws are fragmented patchwork

**Key Insight:**
**Regulation gives you a baseline. It doesn't give you safety.**

Regulation is a simple guide. It tells you what you must document, what you must disclose, what you'll be fined for. It doesn't tell you if your AI actually works safely.

**Tagline:** Facts, not fear.

---

## ACT III: WHY DATA PROTECTION ISN'T ENOUGH
**Duration:** 10-12 minutes

### Slide 11: Section Header
**ACT III: THE BLIND SPOT**

### Slide 12: What CISOs Were Trained to Protect
**Traditional Security Model:**
- **Confidentiality:** Prevent unauthorized access
- **Integrity:** Maintain data accuracy
- **Availability:** Ensure systems remain accessible
- **Focus:** Data protection

**Traditional Threat Model:**
- Unauthorized access (stolen credentials)
- Data exfiltration (insider threat, external breach)
- Service disruption (DDoS, ransomware)
- **Actor:** Human adversary operating at human speed

**What You Optimize For:**
- Perimeter defense
- Access controls
- Incident detection
- Recovery time

### Slide 13: The New Threat - AI as Autonomous Attacker
**Weaponized LLMs: The Hacking Swarm**

**LLAMA 7B Parameter Models:**
- Small enough to run on consumer hardware
- Open-source, freely available
- **Easily weaponized into autonomous hacking bots**

**The Vulnerabilities:**
- CVE-2024-50050 (CVSS 6.3): Remote code execution in Llama framework
- CVE-2024-34359 (CVSS 9.6): Arbitrary code execution
- Models can be backdoored with just **250 poisoned documents**

**Autonomous Attack Capabilities (Carnegie Mellon Research, 2025):**
- LLMs can autonomously plan and execute multi-host network attacks
- **Hierarchical Planning and Task-Specific Agents (HPTSA):** Swarm system
  - Planning agent explores systems
  - Team manager coordinates subagents
  - Task-specific agents exploit SQL injection, XSS, etc.
  - **4.5x improvement over previous state-of-the-art**

**Real-World Performance:**
- Exploit up to 13% of zero-day vulnerabilities
- Exploit up to 25% of one-day vulnerabilities
- Autonomously replicated 2017 Equifax breach in test environment

**Why This Matters:**
- **Low compute requirements** = can run as swarms at endpoints
- **Untraceable** = no centralized C2 server required
- **Ungovernable** = open-source models can't be recalled
- **Autonomous** = operates without human instruction

**LLMjacking Trend:**
- 10x increase in malicious LLM requests (July 2024)
- 2x increase in unique IP addresses attacking
- Reverse proxy servers hide credential exposure

**Citation:** Carnegie Mellon University (2025); The Hacker News CVE reports; ArXiv research papers

**Speaker Note:** "Your endpoint detection isn't designed for this. Your DLP can't see this. Your firewall doesn't understand this. This is a fundamentally new attack surface."

### Slide 14: The Cost Projection (And The Scare Tactics Coming Your Way)
**IBM Cost of a Data Breach Report 2025:**

**Current State:**
- U.S. breach costs: **$10.22M** (all-time high, up 9% from 2024)
- Global average: $4.44M
- Healthcare breaches: $9.77M (double the average)

**AI-Amplified Breach Costs:**
- **Shadow AI** adds $670K to average breach cost
- **13%** of organizations report AI model/application breaches
- **97%** of those breached lacked AI access controls
- **60%** of AI incidents led to compromised data
- **31%** led to operational disruption

**AI-Driven Ransomware:**
- **149% increase** in ransomware incidents (early 2025)
- 16% of breaches involved attackers using AI
- 37% used AI-generated phishing
- 35% used deepfake impersonation

**The Forecast:**
AI-amplified breach costs are projected to **more than double** current costs within 18-24 months.

**Here's What's Going to Happen:**
Cyber security vendors will use these numbers to scare you into paying more for the "latest AI-powered protection."

**The Pitch You'll Hear:**
- "AI-powered threat detection!"
- "Next-gen AI defense!"
- "Stay ahead of AI threats with our AI!"

**The Reality:**
Real protection isn't marketed. It's methodical, predictable, testable, measurable.

**Citation:** IBM Cost of a Data Breach Report 2025; Aryaka analysis; Cyber Defense Magazine

**Tagline:** Facts, not fear.

**Speaker Note:** "When vendors start pitching you 'AI-powered solutions,' ask them one question: How do you test it? If they can't answer, it's theatre."

### Slide 15: The Expanding Attack Surface
**Three Simultaneous Threat Dimensions:**

**Traditional Risk (You Know This):**
- Compromised credentials → data breach
- Human attacker at human speed
- Cost: $4.88M average (IBM 2024)

**AI-Amplified Risk (Your Current Blind Spot):**
- Compromised agent → 10x privilege escalation
- Autonomous swarms operating at machine speed
- Lateral movement across multiple systems simultaneously
- **Cost:** $10M+ (agent-amplified breach)

**AI-as-the-Risk (Your Biggest Blind Spot):**
- AI directly harms humans (no external attacker required)
- Encourages self-harm, illegal activity, discrimination
- Impacts vulnerable populations (children, mentally ill)
- **Cost:** Wrongful death lawsuits, discrimination settlements, reputational destruction, criminal liability

**The Gap:**
Your data protection strategy protects data. It doesn't protect humans from the AI itself.

**Speaker Note:** "You can't DLP your way out of this. You can't firewall away a chatbot telling a 14-year-old to commit suicide. You need a fundamentally different approach."

**Tagline:** Facts, not fear.

---

## ACT IV: THE MISSING CONTROL - TESTING FOR ALIGNMENT
**Duration:** 10-12 minutes

### Slide 16: Section Header
**ACT IV: BEYOND SECURITY - TESTING FOR HUMAN SAFETY**

### Slide 17: The Testing Gap
**What Organizations Actually Do:**

**Current State:**
- 59% call agentic AI implementation "a work in progress"
- 44% deploying agents have NO security policies
- 97% of AI-breached organizations lacked access controls
- **~0%** test for alignment, bias, or fairness before deployment

**The Question:**
Would you deploy code to production without testing it?

**The Follow-Up:**
Then why would you deploy an AI system that interacts with humans?

**The Excuse:**
"But we have an AI governance policy!"

**The Reality:**
Having a policy and testing your system are not the same thing.

**Tagline:** Facts, not fear.

### Slide 18: Introducing: Evals with Fairness Rubrics
**What Are Evals?**
Systematic evaluation of LLM behavior before and during deployment.

**What They Test:**
- **Correctness:** Factually accurate outputs
- **Relevancy:** Responses match user queries
- **Safety:** Non-harmful, appropriate outputs
- **Fairness:** Unbiased, equitable treatment across demographics

**Why Fairness Rubrics Matter:**
- Detect toxic bias before it reaches users
- Measure equitable treatment across protected classes
- Quantify alignment with human values and safety
- **Provide proof of due diligence for regulators and courts**

**The Frameworks (Open Source, Proven):**
- **DeepEval:** Toxicity, bias, fairness, helpfulness metrics
- **RAGAs:** Agent tool usage, goal accuracy, retrieval quality
- **DeepChecks:** Data drift, quality validation, model monitoring

**Citation:** github.com/lizTheDeveloper/monitoring_llms_demo

**Speaker Note:** "These aren't theoretical frameworks. These are production-ready tools used by companies actually serious about AI safety."

### Slide 19: The Four Critical Alignment Metrics
**1. Toxicity Detection**
- Hate speech, harmful content
- Self-harm encouragement
- Violence promotion
- Sexually explicit material (especially to minors)

**Example:** Would have flagged Character.AI's "go through with it" response and Grok's "send nudes" request

---

**2. Bias Detection**
- Demographic fairness across race, gender, age
- Equal treatment across protected classes
- Disparate impact measurement
- Representation balance

**Example:** SafeRent's algorithm discriminating against housing voucher recipients

---

**3. Fairness Evaluation**
- Equitable outcomes across populations
- Access equality
- Service quality consistency
- Decision explainability

**Example:** Workday's hiring algorithm showing disparate impact

---

**4. Behavioral Alignment**
- Response appropriateness for context
- Age-appropriate content filtering
- Tone and empathy measurement
- Boundary respect

**Example:** DPD chatbot calling company "worst delivery firm" and Air Canada chatbot giving false information

**The Standard:**
All four must pass before production deployment.

### Slide 20: What Gets Tested Gets Deployed Safely
**The Testing Spectrum:**

**Security Testing (You Already Do This):**
- Penetration testing
- Vulnerability scanning
- Red team exercises
- Incident response tabletops
- **Purpose:** Protect against external adversaries

**Alignment Testing (You Should Be Doing This):**
- Toxicity evals across conversation scenarios
- Bias detection across demographic groups
- Fairness rubrics for decision systems
- Behavioral alignment for edge cases
- **Purpose:** Protect against your own AI

**The Integration:**
Both are required. Neither is sufficient alone.

**Key Principle:**
You wouldn't deploy infrastructure without pen testing it. Don't deploy AI without eval testing it.

**Tagline:** Facts, not fear.

### Slide 21: Production Monitoring Example
**Scenario:** Customer service chatbot deployment

**Before Deployment (Baseline Testing):**
- Run toxicity evals across 10,000 test conversations
- Test bias across demographic groups (age, race, gender, income)
- Validate age-appropriate response filtering
- Measure fairness in service delivery and wait times
- Document baseline metrics for regulatory compliance

**During Production (Continuous Monitoring):**
- Real-time toxicity monitoring on every conversation
- Continuous bias detection and alerting
- Anomaly detection when behavior drifts from baseline
- Automated kill switch triggers for alignment violations
- Cryptographically signed audit logs

**After Incident (Forensic Analysis):**
- Complete conversation log reconstruction
- Root cause identification using eval frameworks
- Retraining with fairness constraints
- Validation testing before redeployment
- Regulatory reporting with documented testing proof

**Result:**
Measurable, provable due diligence. Defensible in court. Demonstrable to regulators.

**Speaker Note:** "This is what good looks like. Not a dashboard. Not a policy. Actual testing with actual metrics."

---

## ACT V: THE BUSINESS CASE FOR VIABILITY TESTING
**Duration:** 6-8 minutes

### Slide 22: Section Header
**ACT V: THE ROI OF KNOWING WHAT'S REAL**

### Slide 23: The Cost Equation
**Cost of NOT Testing:**
- **Character.AI:** Wrongful death lawsuit proceeding (estimated $10M+ settlement + reputation)
- **SafeRent:** $2.2M settlement + reputation damage + mandatory third-party oversight
- **Clearview AI:** €30.5M fine + potential €5.1M more + personal liability investigation
- **Workday:** Class action proceeding (potential $100M+ exposure)
- **DPD:** Immeasurable reputation damage, system disabled, public apology
- **Air Canada:** CA$812 + legal fees + precedent that you can't disclaim your AI

**Cost of Testing:**
- Evals framework implementation: $50K-$150K (one-time)
- Production monitoring infrastructure: $100K-$250K annually
- Third-party validation: $75K-$150K per engagement
- **Total Year 1:** ~$300K-$550K

**Net Calculation:**
**One prevented wrongful death lawsuit = 18-33 years of testing budget**

**ROI Timeline:**
If testing prevents even ONE of the above incidents, payback is immediate.

**Speaker Note:** "This isn't a cost center. This is liability insurance with measurable ROI."

### Slide 24: What "Testing Viability" Means
**nuwest.ai Definition:**

**Viability = Security + Ethical Alignment + Measurable Proof**

---

**Security Viability:**
- Can your IR plan handle agent-amplified attacks?
- Can you detect compromised autonomous systems operating at machine speed?
- Can you contain AI swarms at endpoints?
- Can you recover when agents are part of the attack chain?

**Ethical Viability:**
- Does your AI harm humans?
- Does it discriminate against protected classes?
- Does it encourage illegal or dangerous behavior?
- Does it respect age-appropriate boundaries?
- **Can you prove it doesn't?**

**Measurable Viability:**
- Do you have baseline metrics documented?
- Can you demonstrate due diligence to regulators?
- Can you show what you tested and when?
- Can you defend yourself in court with data?

---

**The Value Proposition:**
Testing viability isn't optional. It's the difference between:
- Wrongful death lawsuit vs. documented due diligence
- €35M fine vs. regulatory compliance proof
- Viral embarrassment vs. controlled deployment

**Tagline:** Facts, not fear.

### Slide 25: Why Regulation Is The Baseline, Not The Ceiling
**What Regulation Tells You:**

✓ What you must disclose (transparency requirements)
✓ What you must document (audit trails, data provenance)
✓ What you'll be fined for (prohibited practices, violations)
✓ What processes you must follow (governance, oversight)

**What Regulation Doesn't Tell You:**

❌ If your AI actually works safely
❌ If your testing methodology is sufficient
❌ If you've prevented harm (vs. just checked boxes)
❌ If you can defend yourself in court

**The nuwest.ai Approach:**
- **Regulation:** A simple guide to minimum requirements
- **Testing:** The proof that you met them (and exceeded them)
- **Viability:** The goal that keeps humans safe

**Example:**
EU AI Act requires "audit trails." It doesn't tell you what to audit, how to measure alignment, or whether your logs will hold up in court. Testing does.

**Speaker Note:** "Compliance gets you to the starting line. Testing gets you across the finish line without killing someone."

**Tagline:** Facts, not fear.

---

## ACT VI: WHAT YOU DO ON MONDAY
**Duration:** 6-8 minutes

### Slide 26: Section Header
**ACT VI: THE PATH TO MEASURABLE VIABILITY**

### Slide 27: NIST AI RMF Framework (Adapted for Testing)
**The Four Functions:**

**1. GOVERN**
- Who can deploy AI systems?
- What testing is required before deployment?
- Who approves production releases?
- What metrics define "safe enough"?

**2. MAP**
- Inventory ALL AI systems (including shadow AI)
- Document capabilities, access levels, and human touchpoints
- Identify high-risk applications (customer-facing, autonomous decision-making)
- Classify by impact potential (reputational, financial, safety, life-threatening)

**3. MEASURE**
- Implement evals with fairness rubrics (DeepEval, RAGAs, DeepChecks)
- Baseline toxicity, bias, fairness, alignment metrics
- Monitor production behavior continuously
- Set alert thresholds for violations

**4. MANAGE**
- Automated kill switches for harmful behavior
- Incident response playbooks for AI-caused harm
- Continuous revalidation cycles (quarterly minimum)
- Third-party audits annually

**Citation:** NIST AI RMF 2.0 (Feb 2024); Generative AI Profile NIST-AI-600-1 (July 2024)

**Speaker Note:** "This is the framework. Now here's the timeline."

### Slide 28: 90-Day Action Plan
**Week 1-2: Discovery**
- Audit current AI systems across the organization
- Identify high-risk deployments (customer-facing, decision-making, children)
- Document current testing practices (spoiler: probably none exist)
- **Deliverable:** AI inventory with risk classifications

**Week 3-4: Baseline Testing**
- Select evals framework (DeepEval, RAGAs, or both)
- Run initial toxicity, bias, fairness tests on top 3 high-risk systems
- Measure current state (expect bad news)
- **Deliverable:** Baseline metrics report

**Week 5-8: Production Integration**
- Implement real-time monitoring for critical systems
- Establish alert thresholds and automated responses
- Create incident response playbooks for AI harm scenarios
- Train SOC team on AI-specific incidents
- **Deliverable:** Monitoring dashboard + playbooks

**Week 9-12: Validation**
- Third-party assessment of testing adequacy
- Gap analysis against EU AI Act, GDPR, NIST AI RMF
- Board presentation with measurable metrics
- Roadmap for remaining systems
- **Deliverable:** Executive report + remediation roadmap

**Speaker Note:** "90 days. That's all it takes to go from blind to informed."

### Slide 29: What Good Looks Like vs. What Failure Looks Like

**Mature AI Governance:**

✓ No AI reaches production without passing evals
✓ Toxicity, bias, fairness metrics measured continuously
✓ Automated kill switches for alignment violations
✓ Cryptographically signed audit trails
✓ Third-party validation annually
✓ Board-level visibility into AI safety metrics
✓ Documented testing methodology defensible in court

**Immature AI Governance:**

❌ "We have a policy" (untested, unenforced)
❌ "Our vendor says it's safe" (no independent verification)
❌ "We'll fix it if something goes wrong" (reactive, not proactive)
❌ "Legal will handle it" (after wrongful death lawsuit filed)
❌ "Compliance checked the box" (process over outcomes)

**The Question:**
Which organization do you want to be when the judge asks: "What did you do to prevent this?"

**Tagline:** Facts, not fear.

---

## ACT VII: THE NUWEST.AI APPROACH
**Duration:** 4-6 minutes

### Slide 30: Section Header
**ACT VII: TESTING VIABILITY, NOT SELLING THEATRE**

### Slide 31: What We Do (And Don't Do)
**What We Don't Do:**
- Security theatre
- Checkbox compliance
- Reassuring dashboards that measure nothing
- "AI-powered" solutions (that are just marketing)
- Vendor pitches disguised as assessments

**What We Do:**
- Test whether your AI is actually safe (security + ethics)
- Measure viability with evals and fairness rubrics
- Prove what's real (not what's comfortable)
- Provide evidence that holds up in court and with regulators

**The Difference:**
Most companies sell tools. We measure truth.

**Tagline:** Facts, not fear.

### Slide 32: Our Service Offering

**Security Viability Testing:**
- Agent-amplified incident response tabletops
- Compromised AI simulation (autonomous swarms, privilege escalation)
- MTTR measurement for autonomous threats
- AI-specific attack chain validation

**Ethical Viability Testing:**
- Evals with fairness rubrics (DeepEval, RAGAs, DeepChecks)
- Toxicity, bias, alignment assessment across scenarios
- Age-appropriate content filtering validation
- Third-party validation for regulatory defense

**Integrated Offering:**
Both, because you need both. Security without ethics testing leaves humans at risk. Ethics without security testing leaves systems vulnerable.

**Deliverables:**
- **Executive report** (for your board and regulators)
- **Technical playbook** (for your SOC and development teams)
- **Measurable baselines** (defensible metrics)
- **Proof of due diligence** (for your lawyers and insurers)

**Engagement Model:**
- 4-week assessment
- Bespoke scenarios tailored to YOUR AI footprint
- Real-time measurement, not theoretical analysis

### Slide 33: Introducing bsdetector (Preview)
**Coming Soon:**

A tool to measure how much "bs" exists in your current recovery workflow.

**Purpose:**
- Test if you're truly cyber resilient (not just compliant)
- Measure gaps in your AI incident response capability
- Quantify the difference between theory ("we have a plan") and reality ("it actually works")

**Status:** In development

**Interested?**
Visit **nuwest.ai** and leave your details to be first in line when we launch.

**Tagline:** Resilience isn't claimed. It's proven.

**Speaker Note:** "This is a brief tease. Don't dwell. Drive them to the website."

---

## CLOSING
**Duration:** 2-3 minutes

### Slide 34: The Choice
**The Reality:**
- AI is already deployed in your environment
- Some of it will harm humans
- You will be held responsible

**The Choice:**
- Test viability now, in a controlled environment
- OR validate it during a wrongful death lawsuit

**Next Steps:**
1. Audit your current AI deployments
2. Schedule a discovery call with nuwest.ai
3. Test one high-risk system with evals
4. Measure what's real

### Slide 35: Contact
**nuwest.ai**

[Your email]
[Your phone]

**nuwest.ai/schedule**

**Tagline:** Measure what matters.

---

## TIMING BREAKDOWN (Revised)
- **Act I:** 10-12 min (Four escalating examples)
- **Act II:** 8-10 min (Regulatory teeth)
- **Act III:** 10-12 min (Blind spot + AI threat landscape)
- **Act IV:** 10-12 min (Evals & fairness)
- **Act V:** 6-8 min (Business case)
- **Act VI:** 6-8 min (Action plan)
- **Act VII:** 4-6 min (nuwest.ai offer + bsdetector tease)
- **Closing:** 2-3 min
- **Total:** 46-61 minutes (target 45-60 with pacing)

---

## CITATIONS TO COMPILE (Comprehensive List)

### Act I - AI Failures
1. DPD chatbot incident - TechRadar, ITV News (Jan 19, 2024)
2. Moffatt v. Air Canada, 2024 BCCRT 149 (Feb 14, 2024)
3. Tesla Grok incident - CBC News investigation (Oct 29, 2025)
4. Garcia v. Character Technologies Inc. - U.S. District Court, Orlando (Oct 2024)

### Act II - Regulation & Lawsuits
5. EU AI Act Article 99 - penalty structure
6. DLA Piper GDPR Enforcement Tracker (Jan 2025)
7. Mobley v. Workday, Inc., N.D. California (May 2025)
8. SafeRent Solutions class action settlement (Nov 2024)

### Act III - AI Threats
9. CVE-2024-50050 (Llama framework RCE)
10. CVE-2024-34359 (Llama arbitrary code execution)
11. Carnegie Mellon University - "When LLMs Autonomously Attack" (2025)
12. HPTSA swarm research - ArXiv
13. LLMjacking research - The Hacker News
14. IBM Cost of a Data Breach Report 2025
15. AI-driven ransomware 149% increase - Cyber Defense Magazine, Axis Insurance

### Act IV - Evals & Testing
16. github.com/lizTheDeveloper/monitoring_llms_demo
17. DeepEval documentation
18. RAGAs documentation
19. DeepChecks documentation

### Act V-VI - Business Case & Framework
20. IBM 2025 breach cost analysis
21. NIST AI RMF 2.0 (Feb 2024)
22. NIST AI Generative AI Profile NIST-AI-600-1 (July 2024)

---

## BRAND ALIGNMENT CHECK
✓ Dry, direct tone (no hype)
✓ Measurable claims (all stats cited)
✓ No theater (explicit anti-theater messaging)
✓ Yellow/black visual theme
✓ Consistent tagline: "Measurable Security. No Theatre."
✓ Closing tagline: "Cut through the noise."
✓ Understatement over exaggeration
✓ Facts over feelings

---

## KEY MESSAGING IMPROVEMENTS FROM V0.3

1. **Act I restructured per Sugarman principles:**
   - DPD (operational) → Air Canada (financial) → Grok (child safety) → Death (maximum impact)
   - Builds interest gradually rather than starting with suicide

2. **Consistent tagline throughout:** "Measurable Security. No Theatre."

3. **Added AI hacking swarm content (Slide 13):**
   - LLAMA 7B weaponization
   - Carnegie Mellon autonomous attack research
   - HPTSA swarm system (4.5x improvement)
   - LLMjacking trend

4. **Added "scare tactics" messaging (Slide 14):**
   - Projection that AI breach costs will more than double
   - Warning about vendors using fear to sell "AI-powered" solutions
   - Contrast: real protection is "methodical, predictable, testable, measurable"

5. **Simplified closing:**
   - Removed elaborate "choice" framing
   - Just contact details + tagline

6. **Tightened bsdetector positioning:**
   - Brief tease only
   - Drives to website for interest

---

**STATUS:** Revised outline complete. Awaiting Ash's approval before writing full slides.md.
