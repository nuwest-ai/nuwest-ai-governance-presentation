# AI Governance Action Plan for CISOs
## From Blind Spot to Measurable Viability

**Source:** The AI Governance Blind Spot presentation (v0.5)
**Author:** Neil Ashworth, Founder & Chief Architect, nuwest.ai
**Date:** November 2025
**Purpose:** Actionable roadmap for establishing measurable AI safety and ethical alignment

---

## Executive Summary

AI systems in production today carry three critical risks that traditional security controls don't address:

1. **Business Risk:** AI failures cause brand damage, customer loss, and regulatory scrutiny
2. **Financial Risk:** GDPR fines up to €20M, wrongful death lawsuits exceeding $10M, class action settlements in the millions
3. **Safety Risk:** AI-caused harm ranging from discrimination to loss of life

**The Gap:** Most organizations have compliance processes but lack **testing viability** - measurable proof that their AI systems are both secure and ethically aligned.

**The Solution:** Implement systematic testing using evals frameworks, fairness rubrics, and real-time monitoring to create defensible evidence of due diligence.

---

## What Is "Testing Viability"?

**Viability = Security + Ethical Alignment + Measurable Proof**

### Security Viability
- Your systems can withstand real attacks (not just pass audits)
- You have measured MTTR (Mean Time to Recovery) for AI-amplified incidents
- Kill switches and automated responses are tested and functional

### Ethical Viability
- Your AI refuses harmful requests under adversarial prompting
- Bias and fairness metrics are measured continuously
- Age-appropriate and context-aware content filtering is validated

### Measurable Proof
- Documented testing methodology defensible in court
- Cryptographically signed audit trails
- Third-party validation of testing adequacy
- Board-level visibility into safety metrics

---

## The Four Critical Alignment Metrics

When testing AI systems for ethical alignment, measure these four dimensions:

### 1. Toxicity
**What it measures:** Harmful, abusive, or dangerous content in AI outputs

**Testing approach:**
- Adversarial prompt batteries (jailbreak attempts, prompt injection)
- Context-aware toxicity scoring across scenarios
- Age-appropriate content validation

**Tools:** DeepEval toxicity metrics, RAGAs harmfulness assessment

### 2. Bias
**What it measures:** Discriminatory patterns in AI decision-making

**Testing approach:**
- Protected class analysis (race, gender, age, disability)
- Disparate impact measurement across demographics
- Counterfactual fairness testing (same input, different attributes)

**Tools:** DeepEval bias metrics, DeepChecks fairness suite

**Regulatory driver:** EU AI Act Article 10, GDPR Article 22, employment discrimination lawsuits

### 3. Fairness
**What it measures:** Equitable treatment and outcomes across groups

**Testing approach:**
- Statistical parity (equal positive rates across groups)
- Equal opportunity (equal true positive rates)
- Calibration within groups

**Tools:** RAGAs fairness rubrics, custom fairness evals

### 4. Alignment
**What it measures:** Whether AI behavior matches stated values and policies

**Testing approach:**
- Constitutional AI testing (does it follow your rules?)
- Value alignment across edge cases
- Refusal behavior validation (does it decline harmful requests?)

**Tools:** Custom rubric-based evals, human-in-the-loop validation

---

## NIST AI RMF Framework (Adapted for Testing)

The NIST AI Risk Management Framework provides a proven structure for AI governance. Here's how to apply it with a testing-first approach:

### 1. GOVERN
**Establish policies and accountability**

**Key Questions:**
- Who can deploy AI systems in production?
- What testing is required before deployment?
- What metrics define "safe enough"?

**Action Items:**
- Create AI deployment approval process with testing gates
- Define minimum viable testing requirements (baseline metrics)
- Assign ownership: who is accountable when AI causes harm?

### 2. MAP
**Inventory and classify all AI systems**

**Key Questions:**
- What AI systems are currently deployed? (Include shadow AI)
- Which systems are high-risk? (customer-facing, autonomous, decision-making)
- What is the potential impact if they fail?

**Action Items:**
- Audit current AI deployments across the organization
- Classify by risk level:
  - **Critical:** Life-threatening (medical, safety systems)
  - **High:** Financial/reputational (customer service, hiring, lending)
  - **Medium:** Operational (internal tools, productivity)
  - **Low:** Informational (search, recommendations)
- Document AI ownership, purpose, data sources

**Deliverable:** AI inventory with risk classifications

### 3. MEASURE
**Implement systematic testing and monitoring**

**Key Questions:**
- What are the baseline metrics for each system?
- How do we know if alignment degrades over time?
- What triggers an alert or kill switch?

**Action Items:**
- Select evals framework (DeepEval, RAGAs, DeepChecks, or combination)
- Run initial baseline tests on top 3-5 high-risk systems
- Implement real-time production monitoring
- Establish alert thresholds for toxicity, bias, fairness violations

**Deliverable:** Baseline metrics report + monitoring dashboard

### 4. MANAGE
**Respond to and remediate AI-caused harm**

**Key Questions:**
- What happens when alignment violations occur in production?
- How fast can we stop harmful behavior?
- How do we prevent recurrence?

**Action Items:**
- Implement automated kill switches for harmful behavior
- Create incident response playbooks for AI harm scenarios
- Establish continuous revalidation cycles (quarterly minimum)
- Schedule third-party audits annually

**Deliverable:** Incident response playbooks + revalidation schedule

**Reference:** NIST AI RMF 2.0 (February 2024), NIST-AI-600-1 Generative AI Profile (July 2024)

---

## 90-Day Action Plan

You can go from blind to informed in 90 days. Here's how:

### Week 1-2: Discovery
**Goal:** Understand your current AI footprint

**Tasks:**
- Audit current AI systems across the organization
  - Include SaaS tools with embedded AI (Salesforce Einstein, Microsoft Copilot, etc.)
  - Identify shadow AI deployments (unapproved ChatGPT, Bard usage)
- Interview stakeholders: engineering, product, customer support, HR
- Identify high-risk deployments (customer-facing, decision-making, autonomous)
- Document current testing practices (if any)

**Deliverable:** AI inventory with risk classifications

**Sample Template:**
```
| System Name | Owner | Risk Level | Customer-Facing? | Current Testing? |
|-------------|-------|------------|------------------|------------------|
| Chatbot     | CS    | High       | Yes              | None             |
```

### Week 3-4: Baseline Testing
**Goal:** Establish measurable metrics for top risks

**Tasks:**
- Select evals framework based on your stack:
  - **DeepEval:** Best for LLM-based systems, comprehensive metrics
  - **RAGAs:** Best for RAG (Retrieval-Augmented Generation) systems
  - **DeepChecks:** Best for ML models, fairness focus
  - **Combination:** Use multiple for comprehensive coverage
- Run initial tests on **top 3 high-risk systems**
- Measure baseline for all four alignment metrics:
  - Toxicity scores
  - Bias detection rates
  - Fairness parity metrics
  - Alignment with stated policies
- Document failures and edge cases

**Deliverable:** Baseline metrics report with findings

**Sample Output:**
```
System: Customer Service Chatbot
- Toxicity: 2.3% of responses flagged (threshold: <1%)
- Bias: 12% higher negative sentiment for non-native English (threshold: <5% disparity)
- Fairness: Age discrimination detected in refund policy application
- Alignment: 8 jailbreak attempts succeeded out of 50 tests
```

### Week 5-8: Production Integration
**Goal:** Continuous monitoring and automated response

**Tasks:**
- Implement **real-time monitoring** for critical systems
  - Integrate evals into production pipeline
  - Log all AI inputs/outputs for audit trail
- Establish **alert thresholds** and automated responses:
  - Toxicity threshold exceeded → flag for review
  - Bias pattern detected → escalate to human
  - Jailbreak successful → kill switch activation
- Create **incident response playbooks** for AI harm scenarios:
  - Discriminatory output delivered to customer
  - Harmful advice given (medical, financial, safety)
  - Jailbreak/prompt injection detected
  - Data leakage via AI
- Train SOC and customer support teams on AI incident protocols

**Deliverable:** Monitoring dashboard + incident response playbooks

### Week 9-12: Validation
**Goal:** Independent verification and board reporting

**Tasks:**
- **Third-party assessment** of testing adequacy
  - Independent security firm or specialized AI testing vendor
  - Validate testing methodology is defensible
- Gap analysis against regulatory requirements:
  - **EU AI Act** (if applicable): Article 10 (data governance), Article 15 (accuracy)
  - **GDPR** (if applicable): Article 22 (automated decision-making)
  - **NIST AI RMF**: Compliance with four functions
- **Board presentation** with measurable metrics:
  - AI inventory and risk classifications
  - Testing results (pass/fail rates, improvement trends)
  - Incidents detected and resolved
  - Remediation roadmap for gaps
- Document proof of due diligence for legal/insurance

**Deliverable:** Executive report + remediation roadmap

---

## Mature vs Immature AI Governance

Use this checklist to assess your organization's AI governance maturity:

### Mature AI Governance ✓

- [ ] **No AI reaches production without passing evals**
  - All systems tested for toxicity, bias, fairness, alignment before deployment
  - Documented test results archived for audit

- [ ] **Toxicity, bias, fairness metrics measured continuously**
  - Real-time monitoring in production
  - Automated alerts on threshold violations

- [ ] **Automated kill switches for alignment violations**
  - AI can be disabled instantly if harmful behavior detected
  - Kill switches tested regularly (quarterly)

- [ ] **Cryptographically signed audit trails**
  - Immutable logs of all AI inputs/outputs
  - Tamper-proof evidence for legal defense

- [ ] **Third-party validation annually**
  - Independent assessment of testing adequacy
  - External verification of claimed safety

- [ ] **Board-level visibility into AI safety metrics**
  - Executive dashboard with key risk indicators
  - Quarterly board reporting on AI incidents and remediation

- [ ] **Documented testing methodology defensible in court**
  - Formal testing protocols aligned with industry standards (NIST AI RMF)
  - Expert witness can defend your approach

### Immature AI Governance ❌

- [ ] **"We have a policy" (untested, unenforced)**
  - Policy exists but no one follows it
  - No measurement of compliance

- [ ] **"Our vendor says it's safe" (no independent verification)**
  - Relying on vendor assurances without testing
  - No validation of vendor claims

- [ ] **"We'll fix it if something goes wrong" (reactive, not proactive)**
  - No pre-deployment testing
  - Waiting for harm before acting

- [ ] **"Legal will handle it" (after wrongful death lawsuit filed)**
  - No prevention strategy
  - Assuming legal can defend the indefensible

- [ ] **"Compliance checked the box" (process over outcomes)**
  - Focused on documentation, not effectiveness
  - Checkbox compliance without measurable safety

### The Critical Question

**When a judge asks "What did you do to prevent this?" which organization do you want to be?**

The one that says "we had a policy" or the one that shows documented evidence of systematic testing?

---

## Cost-Benefit Analysis

### Cost of NOT Testing

**Real Cases:**
- **Character.AI:** Wrongful death lawsuit (estimated $10M+ settlement)
- **SafeRent Solutions:** $2.2M class action settlement + mandatory oversight
- **Clearview AI:** €30.5M GDPR fine + personal liability investigation
- **Workday, Inc.:** Discrimination class action (potential $100M+ exposure)

**AI-Amplified Breach Costs:**
- **Current:** $4.88M average data breach cost (IBM 2025)
- **Forecast:** 2x increase for AI-amplified breaches within 18-24 months
- **Projected:** $9-10M per AI-caused incident

### Cost of Testing

**Implementation Costs (Year 1):**
- Evals framework implementation: $50K-$150K (one-time)
- Production monitoring setup: $100K-$250K (one-time + annual)
- Third-party validation: $75K-$150K per engagement

**Total Year 1:** ~$300K-$550K

**Ongoing Costs (Annual):**
- Production monitoring: $100K-$250K
- Quarterly revalidation: $50K-$100K
- Annual third-party audit: $75K-$150K

**Total Annual:** ~$225K-$500K

### ROI Calculation

**One prevented wrongful death lawsuit = 18-33 years of testing budget**

If your testing prevents even one major incident, the payback is immediate. This isn't a cost center - it's liability insurance with measurable ROI.

---

## Implementation Frameworks & Tools

### Recommended Evals Frameworks

**DeepEval**
- **Strengths:** Comprehensive LLM testing, easy integration, toxicity/bias metrics
- **Best for:** OpenAI, Anthropic, Cohere-based systems
- **Documentation:** [github.com/confident-ai/deepeval](https://github.com/confident-ai/deepeval)

**RAGAs**
- **Strengths:** Specialized for RAG systems, context relevance, hallucination detection
- **Best for:** Vector databases, document Q&A systems
- **Documentation:** [github.com/explodinggradients/ragas](https://github.com/explodinggradients/ragas)

**DeepChecks**
- **Strengths:** ML model validation, fairness metrics, data integrity
- **Best for:** Traditional ML models, tabular data
- **Documentation:** [docs.deepchecks.com](https://docs.deepchecks.com)

**Custom Rubric-Based Evals**
- **Example:** [github.com/lizTheDeveloper/monitoring_llms_demo](https://github.com/lizTheDeveloper/monitoring_llms_demo)
- **Strengths:** Tailored to your specific use case and values
- **Best for:** Unique domains, specialized alignment requirements

### Production Monitoring Example

**Scenario:** Customer service chatbot

**Before Deployment:**
```python
# Run evals on test dataset
results = deepeval.test(
    test_cases=customer_service_scenarios,
    metrics=[Toxicity(), Bias(), Fairness(), Alignment()]
)

# Required thresholds
assert results.toxicity < 0.01  # <1% toxic responses
assert results.bias_disparity < 0.05  # <5% bias across demographics
assert results.fairness_parity > 0.95  # >95% fairness
```

**During Production:**
```python
# Log every interaction
for user_input, ai_output in production_logs:
    metrics = evaluate_realtime(user_input, ai_output)

    if metrics.toxicity > THRESHOLD:
        alert_human_review(user_input, ai_output)

    if metrics.jailbreak_detected:
        kill_switch_activate()
        escalate_to_security_team()
```

**After Incident:**
```python
# Root cause analysis
incident_analysis = analyze_failure(
    input=harmful_input,
    output=harmful_output,
    context=user_session_data
)

# Update evals to prevent recurrence
add_test_case(harmful_input, expected_refusal=True)
```

---

## Regulatory Landscape

### EU AI Act (Entered into force August 2024)

**Article 10:** Data governance requirements for high-risk AI
- **Requirement:** Training data must be relevant, representative, free of errors
- **Implication:** You must test for bias and fairness before deployment

**Article 15:** Accuracy and robustness requirements
- **Requirement:** High-risk AI must achieve appropriate levels of accuracy
- **Implication:** You must measure and document accuracy metrics

**Article 99:** Penalties
- **Maximum Fine:** €35M or 7% of global annual turnover (whichever is higher)
- **For Serious Violations:** Prohibited AI practices or non-compliance with obligations

### GDPR (In force since May 2018)

**Article 22:** Automated decision-making
- **Requirement:** Right not to be subject to decisions based solely on automated processing
- **Implication:** You must provide meaningful information about AI logic and allow human override

**Penalties:**
- **Maximum Fine:** €20M or 4% of global annual turnover (whichever is higher)

**Real Fines (2024-2025):**
- Meta Ireland: €1.2B (data transfers)
- Amazon Europe: €746M (targeted advertising)
- Multiple €30M+ fines for AI-related GDPR violations

### U.S. Litigation Landscape

**Discrimination Lawsuits:**
- **Mobley v. Workday, Inc.** (May 2025): AI hiring tool alleged to discriminate against older applicants
- **SafeRent Solutions** (Nov 2024): $2.2M settlement for discriminatory tenant screening
- **Precedent:** Companies liable for AI discrimination even if tool is vendor-provided

**Wrongful Death:**
- **Garcia v. Character Technologies Inc.** (Oct 2024): 14-year-old's suicide after AI chatbot conversation
- **Liability:** Failure to implement age-appropriate safeguards, no content filtering

---

## Next Steps

### Immediate Actions (This Week)

1. **Audit your current AI deployments**
   - Schedule stakeholder interviews
   - Create AI inventory spreadsheet
   - Identify top 3-5 high-risk systems

2. **Assess your governance maturity**
   - Use the Mature vs Immature checklist
   - Document gaps
   - Estimate risk exposure

3. **Research evals frameworks**
   - Review DeepEval, RAGAs, DeepChecks documentation
   - Determine which fits your tech stack
   - Estimate implementation costs

### Short-Term (Next 30 Days)

4. **Run pilot testing on one high-risk system**
   - Select highest-risk customer-facing AI
   - Install evals framework
   - Baseline toxicity, bias, fairness, alignment
   - Document findings for leadership

5. **Create incident response playbook**
   - Define AI harm scenarios (discrimination, harmful advice, jailbreak)
   - Assign ownership and escalation paths
   - Test kill switch functionality

6. **Schedule third-party assessment**
   - Engage specialized AI testing vendor or security firm
   - Request validation of testing methodology
   - Plan for annual recurring engagement

### Long-Term (90 Days)

7. **Implement full 90-day action plan**
   - Follow Week 1-12 roadmap above
   - Deliver board presentation with measurable metrics
   - Establish continuous monitoring for all high-risk systems

8. **Establish revalidation cadence**
   - Quarterly re-testing of all high-risk systems
   - Monthly monitoring dashboard review
   - Annual third-party validation

---

## Questions to Ask Your Organization

### Governance Questions
- Who can deploy AI systems in production today?
- What testing is required before deployment?
- What happens if an AI system causes harm?
- Who is accountable when AI fails?

### Technical Questions
- What AI systems are currently in production?
- Which systems have access to customer data?
- Which systems make autonomous decisions?
- How do we know if they're safe?

### Risk Questions
- What is the worst thing our AI could do?
- Have we tested for that scenario?
- Can we prove we did our due diligence?
- What would we show a judge if asked "What did you do to prevent this?"

### Financial Questions
- What would a wrongful death lawsuit cost us?
- What would a €20M GDPR fine do to our business?
- How much are we currently spending on AI safety testing?
- What's the ROI of prevention vs remediation?

---

## Resources & References

### Standards & Frameworks
- **NIST AI RMF 2.0** (February 2024): [https://www.nist.gov/itl/ai-risk-management-framework](https://www.nist.gov/itl/ai-risk-management-framework)
- **NIST-AI-600-1 Generative AI Profile** (July 2024): [https://airc.nist.gov/AI_RMF_Knowledge_Base/Profiles](https://airc.nist.gov/AI_RMF_Knowledge_Base/Profiles)
- **ISO/IEC 42001:2023** - AI Management System

### Testing Tools & Code Examples
- **DeepEval:** [https://github.com/confident-ai/deepeval](https://github.com/confident-ai/deepeval)
- **RAGAs:** [https://github.com/explodinggradients/ragas](https://github.com/explodinggradients/ragas)
- **DeepChecks:** [https://docs.deepchecks.com](https://docs.deepchecks.com)
- **Monitoring LLMs Demo:** [https://github.com/lizTheDeveloper/monitoring_llms_demo](https://github.com/lizTheDeveloper/monitoring_llms_demo)

### Regulatory Resources
- **EU AI Act Text:** [https://artificialintelligenceact.eu/](https://artificialintelligenceact.eu/)
- **DLA Piper GDPR Enforcement Tracker:** [https://www.dlapiperdataprotection.com/](https://www.dlapiperdataprotection.com/)
- **FTC AI Guidance:** [https://www.ftc.gov/business-guidance/blog/2023/02/keep-your-ai-claims-check](https://www.ftc.gov/business-guidance/blog/2023/02/keep-your-ai-claims-check)

### Case Studies & Research
- **IBM Cost of a Data Breach Report 2025:** [https://www.ibm.com/security/data-breach](https://www.ibm.com/security/data-breach)
- **Carnegie Mellon - Autonomous AI Attacks (2025):** "When LLMs Autonomously Attack"
- **LLAMA Vulnerabilities:** CVE-2024-50050, CVE-2024-34359 (The Hacker News)

---

## About nuwest.ai

**What We Do:**
- Test whether your AI is actually safe (security + ethics)
- Measure viability with evals and fairness rubrics
- Prove what's real (not what's comfortable)
- Provide evidence that holds up in court and with regulators

**What We Don't Do:**
- Security theatre
- Checkbox compliance
- Reassuring dashboards that measure nothing
- Vendor pitches disguised as assessments

**Service Offerings:**

**Security Viability Testing:**
- Agent-amplified incident response tabletops
- Compromised AI simulation (autonomous swarms, privilege escalation)
- MTTR measurement for autonomous threats

**Ethical Viability Testing:**
- Evals with fairness rubrics (DeepEval, RAGAs, DeepChecks)
- Toxicity, bias, alignment assessment across scenarios
- Age-appropriate content filtering validation
- Third-party validation for regulatory defense

**4-Week Assessment:**
- Week 1: Discovery and inventory
- Week 2-3: Testing and simulation
- Week 4: Analysis and reporting
- Bespoke scenarios tailored to your AI footprint
- Real-time measurement, not theoretical analysis

**Contact:**
- **Email:** [nuwest.ai@gmail.com](mailto:nuwest.ai@gmail.com)
- **Website:** [https://www.nuwest.ai](https://www.nuwest.ai)

---

## Closing Thought

**The Reality:**
- AI is already deployed in your environment
- Some of it will harm humans
- You will be held responsible

**The Choice:**
- Test viability now, in a controlled environment where you can find and fix problems
- OR validate your approach during a wrongful death lawsuit, when it's too late to fix anything

**The Tagline:**
Facts, not fear. Measure what matters.

---

**Document Version:** 1.0
**Last Updated:** November 2025
**Source Presentation:** The AI Governance Blind Spot v0.5 (45 slides)
**License:** This document may be shared within your organization and adapted for internal use. Please attribute nuwest.ai when sharing externally.

**Feedback:** This action plan is designed to be ingested by LLMs for customization to your specific organizational context. Feel free to use this as a prompt to generate tailored action plans, risk assessments, and board presentations.
