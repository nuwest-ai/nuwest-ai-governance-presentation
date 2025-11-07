# Graphics & Iconography Suggestions

## Problem Identified
The presentation is too text-heavy and lacks visual support through graphics and iconography.

---

## Recommended Additions by Slide

### **Slide 2-5 (Act I Examples)**

**DPD Chatbot (Slide 2-3):**
- 💬 Chat bubble icon with warning triangle
- 📱 Mobile phone icon with chatbot interface
- ⚠️ Warning sign overlay

**Air Canada (Slide 3):**
- ✈️ Airplane icon
- ⚖️ Scales of justice icon
- 💰 Money bag icon (for damages)

**Tesla Grok (Slide 4):**
- 🚗 Car icon (Tesla)
- 👶 Child/minor warning icon
- 🚫 Prohibition symbol

**Character.AI (Slide 5):**
- 💔 Broken heart icon
- ⚰️ Memorial/tragedy symbol
- ⚖️ Legal scales

**Suggested Implementation:**
```html
<div class="icon-grid">
    <div class="icon-item">
        <svg><!-- Chat bubble SVG --></svg>
        <p>Reputational</p>
    </div>
    <div class="icon-item">
        <svg><!-- Scales SVG --></svg>
        <p>Legal</p>
    </div>
    <div class="icon-item">
        <svg><!-- Child warning SVG --></svg>
        <p>Safety</p>
    </div>
    <div class="icon-item">
        <svg><!-- Memorial SVG --></svg>
        <p>Fatal</p>
    </div>
</div>
```

---

### **Slide 8-9 (Regulation & Fines)**

**EU AI Act / GDPR Fines:**
- 🇪🇺 EU flag icon
- 💶 Euro currency symbol (large, bold)
- 📊 Bar chart showing fine amounts
- ⚖️ Gavel icon

**Suggested Visual:**
```
Clearview AI: €30.5M  ████████████████████████
LinkedIn:     €310M   ████████████████████████████████
Meta:         €251M   ████████████████████████████
```

**Visual separator bars** in yellow showing comparative fine amounts.

---

### **Slide 12-14 (AI Threats & Hacking Swarms)**

**LLAMA Weaponization (Slide 12-13):**
- 🤖 Robot/AI icon (multiple, showing swarm)
- 💻 Laptop/endpoint device icons
- 🔗 Network connection lines
- ⚠️ Vulnerability icons (CVE badges)

**Suggested Diagram:**
```
┌─────┐  ┌─────┐  ┌─────┐
│ 🤖  │  │ 🤖  │  │ 🤖  │  ← Autonomous LLM swarm
└──┬──┘  └──┬──┘  └──┬──┘
   │        │        │
   └────────┼────────┘
            │
        ┌───▼───┐
        │ 💻 💻 │  ← Endpoint devices
        └───────┘
```

**Carnegie Mellon HPTSA:**
- 🧠 Brain icon (planning agent)
- 👥 Team/group icon (team manager)
- 🔧 Tool icons (task-specific agents)
- ➡️ Arrow showing attack flow

---

### **Slide 14 (Cost Projection)**

**IBM Breach Costs:**
- 📈 Upward trending graph
- 💵 Dollar signs growing in size
- ⚠️ Warning triangle with "2x" multiplier

**Suggested Visual:**
```
2024:  $10.22M  █████████████
        ↓
2026:  $20M+    ██████████████████████████
```

**Vendor Scare Tactics:**
- 🎭 Theater mask (to represent "theatre")
- 📢 Megaphone (representing marketing hype)
- ❌ Crossed-out "AI-powered" badge

---

### **Slide 18-21 (Evals & Fairness Rubrics)**

**Four Alignment Metrics (Slides 19-21):**

**1. Toxicity Detection:**
- ☠️ Skull/danger icon
- 🚫 Prohibition symbol
- 💀 Toxic waste symbol

**2. Bias Detection:**
- ⚖️ Balanced scales
- 👥 Diverse people icons
- 📊 Bias measurement gauge

**3. Fairness Evaluation:**
- ✅ Checkmark for equitable
- 📊 Equal bars chart
- 🔄 Balance symbol

**4. Behavioral Alignment:**
- 🎯 Target/alignment icon
- ✔️ Approval checkmark
- 📏 Measurement ruler

**Suggested Layout:**
```html
<div class="three-column">
    <div>
        <svg class="icon-large"><!-- Toxicity icon --></svg>
        <h3>Toxicity</h3>
        <p>Detect harmful content</p>
    </div>
    <div>
        <svg class="icon-large"><!-- Bias scales --></svg>
        <h3>Bias</h3>
        <p>Measure fairness</p>
    </div>
    <div>
        <svg class="icon-large"><!-- Alignment target --></svg>
        <h3>Alignment</h3>
        <p>Verify behavior</p>
    </div>
</div>
```

---

### **Slide 23-24 (Cost Equation)**

**ROI Calculation:**
- 💰 Money bag icons (different sizes)
- ⚖️ Balance scale (cost vs. benefit)
- ✅ Checkmark for "prevented lawsuit"

**Suggested Visual:**
```
Testing Cost:     $300K-$550K   💰
        vs.
Lawsuit Cost:     $10M+         💰💰💰💰💰💰💰💰💰💰

ROI: 18-33 years of budget ✅
```

---

### **Slide 27-28 (NIST Framework)**

**Four Functions:**
- 🏛️ GOVERN (building/institution icon)
- 🗺️ MAP (map/compass icon)
- 📏 MEASURE (ruler/gauge icon)
- ⚙️ MANAGE (gear/settings icon)

**Suggested Layout:**
```html
<div class="icon-grid">
    <div class="icon-item">
        <svg><!-- Building icon --></svg>
        <h3>GOVERN</h3>
    </div>
    <div class="icon-item">
        <svg><!-- Map icon --></svg>
        <h3>MAP</h3>
    </div>
    <div class="icon-item">
        <svg><!-- Gauge icon --></svg>
        <h3>MEASURE</h3>
    </div>
    <div class="icon-item">
        <svg><!-- Gear icon --></svg>
        <h3>MANAGE</h3>
    </div>
</div>
```

---

### **Slide 29 (Mature vs. Immature Governance)**

**Visual Comparison:**
- ✅ Green checkmarks for mature governance
- ❌ Red X marks for immature governance
- 📊 Side-by-side comparison chart

---

## Icon Resources

### **Option 1: Custom SVG Icons (Recommended)**

Create simple, minimal SVG icons in yellow/black that match nuwest.ai branding.

**Example SVG Template:**
```svg
<svg width="80" height="80" viewBox="0 0 80 80" fill="none" xmlns="http://www.w3.org/2000/svg">
    <!-- Icon path here -->
    <path d="..." fill="#FFD300" stroke="#000000" stroke-width="2"/>
</svg>
```

Store in: `assets/icons/`

### **Option 2: Font Awesome (Simple Integration)**

Use Font Awesome icons with yellow/black coloring:
```html
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<i class="fas fa-robot" style="color: #FFD300; font-size: 4em;"></i>
```

### **Option 3: Heroicons (Clean, Modern)**

Download from: https://heroicons.com/
- Minimal, clean design
- Easy to customize colors
- SVG format

---

## Diagrams & Charts

### **Attack Flow Diagram (Slide 13)**

```
Traditional Attack:
Human → Credentials → Single System → Breach

AI-Amplified Attack:
Swarm → Multiple Endpoints → Autonomous → Widespread Breach
```

### **Escalation Ladder (Slide 6 - The Pattern)**

```
          💀 Death
         /
    ⚠️ Safety
       /
   ⚖️ Legal
      /
  💬 Reputation
```

### **Testing Spectrum (Slide 20)**

```
Security Testing          +          Alignment Testing
─────────────────                    ────────────────
🛡️ Penetration                       ☠️ Toxicity
🔍 Vulnerability                      ⚖️ Bias
👥 Red Team                           ✅ Fairness
📋 IR Tabletops                       🎯 Alignment
```

---

## Implementation Priority

### **High Priority (Add First):**
1. Slide 6 - Pattern escalation visual
2. Slide 8-9 - Fine comparison bars
3. Slides 19-22 - Four alignment metrics icons
4. Slide 27-28 - NIST framework icons

### **Medium Priority:**
5. Slide 13 - Hacking swarm diagram
6. Slide 14 - Cost projection chart
7. Slide 23 - ROI visual comparison
8. Slide 29 - Mature vs. immature checklist

### **Low Priority (Nice to Have):**
9. Slide 2-5 - Individual example icons
10. Slide 20 - Testing spectrum diagram

---

## Quick Implementation Guide

**Step 1:** Create `assets/icons/` directory
```bash
mkdir -p assets/icons
```

**Step 2:** Add SVG icons (use templates above)

**Step 3:** Update slides.md with icon references
```markdown
<div class="icon-large">
  <img src="assets/icons/toxicity.svg" alt="Toxicity Detection">
</div>
```

**Step 4:** Use CSS classes for styling
- `.icon-inline` - Small inline icons
- `.icon-large` - Large standalone icons
- `.icon-grid` - Grid layout for multiple icons

---

## Color Palette for Graphics

**Primary:**
- Yellow: `#FFD300` (icons, highlights, emphasis)
- Black: `#000000` (outlines, backgrounds, text)

**Secondary:**
- White: `#FFFFFF` (backgrounds, contrast)
- Gray: `#333333` (subtle elements)

**Usage:**
- Icons: Yellow fill with black stroke (2-3px)
- Charts: Yellow bars on black background
- Diagrams: Yellow arrows/connections, black nodes

---

## Tools for Creating Graphics

1. **Inkscape** (Free, open-source SVG editor)
2. **Figma** (Web-based, collaborative design)
3. **Excalidraw** (Simple diagramming tool)
4. **D3.js** (For data visualizations - if needed)

---

## Next Steps

1. Review high-priority slides
2. Create or source icons
3. Add to `assets/icons/`
4. Update slides.md with visual elements
5. Test presentation locally
6. Adjust sizing and positioning

---

**Goal:** Reduce text density by 30-40% through strategic use of visual elements while maintaining brand consistency and improving information retention.
