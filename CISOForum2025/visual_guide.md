# Visual Design Guide for AI Governance Presentation

## Brand Colors Quick Reference
```
Signal Yellow:  #FFD400 (Use for: titles, accents, CTAs)
Matte Black:    #0D0D0D (Use for: backgrounds)
Carbon Grey:    #1F1F1F (Use for: section backgrounds)
Soft White:     #F5F5F5 (Use for: body text)
Electric Teal:  #00E6C3 (Use for: highlights, interactive elements)
```

---

## Key Diagrams to Create

### DIAGRAM 1: Traditional vs Agentic AI (Slide 5)

**Layout:** Two-column comparison

**Left Side - Traditional AI:**
```
[User Icon]
     ↓
[Chat Bubble: "Write an email"]
     ↓
[AI Brain Icon]
     ↓
[Response Text]
```
**Label:** "You ask, it answers"

**Right Side - Agentic AI:**
```
[User Icon]
     ↓
[AI Agent Icon]
    ↙ ↓ ↘
[Email] [Files] [APIs]
    ↓    ↓    ↓
[Multiple Systems Access]
```
**Label:** "Autonomous access to multiple systems"

**Color Scheme:**
- Icons: Soft White (#F5F5F5)
- Arrows: Signal Yellow (#FFD400)
- Background: Matte Black (#0D0D0D)
- Labels: Electric Teal (#00E6C3)

**Tool:** Use Google Slides shapes (circles for icons, arrows for flow)

---

### DIAGRAM 2: Attack Chain Progression (Slide 8)

**Layout:** Horizontal flow with expanding nodes

```
[Phishing Email]
      ↓
[Compromised User]
      ↓
[Hijacked Agent] ← This is where it gets worse
   ↙  ↓  ↘
[Email] [Files] [Credentials]
   ↓     ↓      ↓
[More Agents] [Data Exfil] [Lateral Movement]
```

**Visual Style:**
- First two boxes: Normal size, white outline
- "Hijacked Agent": Larger, yellow outline with glow
- Arrows from agent: Thick yellow arrows
- Bottom row: Red boxes with white text

**Emphasis:** Make the "Hijacked Agent" box pulse or animate if presenting live

---

### DIAGRAM 3: Timeline Visual (Slide 10)

**Layout:** Vertical timeline on left, events on right

```
9:00 AM  ●━━━━  Employee clicks phishing link
         │
9:15 AM  ●━━━━  Attacker hijacks AI agent
         │
10:00 AM ●━━━━  Agent begins autonomous actions:
         │      • Data exfiltration
         │      • Backup discovery
         │      • System pivoting
         │
         │      [16-hour gap shown visually]
         │
8:00 AM  ●━━━━  You discover the breach
(Next Day)      [Red alert icon]
```

**Color Coding:**
- Timeline line: Carbon Grey
- Dots: Yellow → Yellow → Yellow → Red (final)
- Text: White
- Final event: Red box background

**Impact:** The visual gap between 10 AM and 8 AM next day should be obvious

---

### DIAGRAM 4: Microsegmentation Before/After (Slide 20)

**Before Microsegmentation:**
```
┌─────────────────────────────────────┐
│                                     │
│  [Workstations] [Servers] [Data]   │
│       ↔           ↔         ↔       │
│   All interconnected openly         │
│                                     │
│  One breach = Full access           │
└─────────────────────────────────────┘
```

**After Microsegmentation:**
```
┌─────────┐  ┌─────────┐  ┌─────────┐
│ Zone 1  │  │ Zone 2  │  │ Zone 3  │
│ Work-   │║│ Servers │║│ Critical│
│ stations│║│         │║│ Data    │
└─────────┘  └─────────┘  └─────────┘
     ↓            ↓            ↓
   Policy      Policy       Policy
   Required    Required     Required
```

**Visual Elements:**
- Before: One large box, arrows everywhere (chaos)
- After: Three separate boxes with thick walls (║ symbols)
- Walls: Yellow highlight to show barriers
- Each zone: Different shade of grey

---

## Icon Library Recommendations

### Free Icon Sources (Consistent Style)

**Recommended Set:** Lucide Icons or Feather Icons
- Clean, minimal, professional
- Works on dark backgrounds
- Easy to export as SVG

**Key Icons You'll Need:**
- 👤 User/Person
- 🤖 AI Agent/Robot
- 📧 Email
- 📁 Files/Folders
- 🔑 Credentials/Keys
- ⚠️ Alert/Warning
- 🛡️ Shield/Security
- 🔒 Lock/Secure
- 📊 Data/Analytics
- ⚙️ Settings/Config

**Download:** [https://lucide.dev](https://lucide.dev) (MIT License)

---

## Data Visualization Guidelines

### Large Stat Slides (Multiple Examples)

**Template Format:**
```
─────────────────────────────────
Title in Yellow, Top Left

            97%

Organizations lacking AI 
access controls were breached

Source: IBM Security 2025 | Slide XX
─────────────────────────────────
```

**Best Practices:**
- Number: 120-150pt font, Electric Teal or Signal Yellow
- Description: 24-28pt font, Soft White
- Generous white space around number
- Source citation: Small, bottom right, grey

### Multiple Stats on One Slide

**Layout Options:**

**Option A - Three Column:**
```
┌─────────┐  ┌─────────┐  ┌─────────┐
│  45%    │  │  26%    │  │  17%    │
│         │  │         │  │         │
│Employee │  │Paste    │  │Orgs     │
│AI Usage │  │Sensitive│  │Scanning │
└─────────┘  └─────────┘  └─────────┘
```

**Option B - Comparison:**
```
   2023         →         2025
   
   $400K                  $2M
   
Average Ransom Payment (+500%)
```

---

## Slide-Specific Design Notes

### Slide 4: Traditional AI Risk
- Simple icon of ChatGPT logo + arrow + copy/paste icon
- Keep it minimal—this is the "known" baseline
- Use muted colors (grey scale) to show this is old news

### Slide 6: Real Examples Timeline
```
2024 ─────●────────●────────●─────→
       │       │       │
    Sandbox Memory Shadow
    Escape  Poison  Agents
```
- Three incidents on one timeline
- Each event: Small icon + text label
- Timeline in Electric Teal

### Slide 9: Ransomware Evolution Stats
- Three stats stacked vertically
- Each with an icon (warning, clock, graph)
- Progressive reveal if presenting live

### Slide 12: EU AI Act
- Simple scale/justice icon
- €35M in huge font
- "or 7% global revenue" below in smaller font
- Gavel or regulatory symbol

### Slide 23: ROI Calculation
```
Strong Governance = 73% fewer incidents
                    ↓
Average Breach = $4.88M
                    ↓
Cost Avoidance = $3.56M per breach
                    ↓
Your Investment = < $500K
                    ↓
ROI = 7:1 in first year
```
- Step-by-step flow
- Each line fades in sequentially (if animated)
- Final ROI in large yellow text

---

## Animation Guidelines (If Using)

### DO Use Animation For:
- Progressive disclosure of bullet points (fade in)
- Building diagrams step-by-step
- Emphasizing key stats (zoom in slightly)
- Transitioning between "before/after" states

### DON'T Use Animation For:
- Slide transitions (use instant cuts)
- Decorative effects (spinning, bouncing)
- Anything that takes > 1 second
- Title entrances

### Recommended Timing:
- Fade in: 0.3 seconds
- Zoom: 0.5 seconds
- Build: 0.4 seconds between items

---

## Typography Hierarchy

### Slide Titles
- Font: Oswald (or closest: Impact, Arial Black)
- Size: 32-36pt
- Color: Signal Yellow (#FFD400)
- Weight: Bold
- Case: Title Case

### Body Text
- Font: Roboto (or closest: Arial, Helvetica)
- Size: 18-22pt
- Color: Soft White (#F5F5F5)
- Weight: Regular
- Line Height: 1.5x

### Large Stats
- Font: Oswald
- Size: 96-120pt
- Color: Electric Teal (#00E6C3) or Signal Yellow
- Weight: Bold

### Captions/Citations
- Font: Roboto
- Size: 12-14pt
- Color: Carbon Grey (#1F1F1F) text on light, or #888888 on dark
- Weight: Regular
- Italics: Optional

---

## Contrast Checklist

**Test Every Slide:**
- [ ] Text readable from 20 feet away
- [ ] Yellow text on black = 15:1 contrast ratio ✓
- [ ] White text on black = 16:1 contrast ratio ✓
- [ ] Teal text on black = 8:1 contrast ratio ✓
- [ ] No text on images without background
- [ ] Icons distinct from background

**Pro Tip:** View slides in greyscale to check contrast without color

---

## Export Settings

### For Presentation:
- Format: Google Slides native (best compatibility)
- Backup: PDF (fonts embedded)
- Emergency: PowerPoint (.pptx)

### For Distribution:
- PDF with clickable links
- File size: Under 10MB (compress images if needed)
- Fonts: Embedded (File > Download > PDF)

### For Social Sharing:
- Individual slides as PNG
- Resolution: 1920x1080px
- Format: PNG (better for text than JPG)

---

## Quick Design Checklist

Before finalizing each slide:

**Layout:**
- [ ] 70% dark space, 20% accent color, 10% highlight
- [ ] Generous margins (0.5" minimum)
- [ ] Visual hierarchy clear (what to look at first?)
- [ ] Consistent alignment across all elements

**Content:**
- [ ] One main idea per slide
- [ ] Maximum 6 bullet points (fewer is better)
- [ ] All stats have sources
- [ ] No orphaned text (last line with one word)

**Brand:**
- [ ] Color palette consistent
- [ ] Fonts match guidelines
- [ ] nuwest.ai attribution on key slides
- [ ] "Cut through the noise" where appropriate

**Accessibility:**
- [ ] High contrast text
- [ ] Alt text on images (if distributing digitally)
- [ ] No color-only information coding
- [ ] Readable fonts (no script, no thin weights)

---

## Common Design Mistakes to Avoid

**DON'T:**
❌ Use more than 3 colors per slide
❌ Center-align body text (left-align is more readable)
❌ Use bullet points for everything
❌ Cram too much on one slide
❌ Use generic stock photos
❌ Animate every element
❌ Use different fonts within one slide
❌ Make text smaller to fit more content

**DO:**
✓ Use white space generously
✓ Make one point per slide
✓ Use real data and examples
✓ Keep animations subtle
✓ Test readability from far away
✓ Use diagrams instead of text where possible
✓ Maintain consistent styling

---

## Mobile-Friendly Considerations

Even though this is a live presentation, people may view the deck on phones later:

- Minimum text size: 18pt (legible on 5" screen)
- High contrast for outdoor viewing
- Avoid fine lines or small details
- Test on your phone before distributing

---

## Final Polish Checklist

Before you call the slides "done":

**Content:**
- [ ] All statistics verified and cited
- [ ] No typos (use spell check)
- [ ] Consistent terminology throughout
- [ ] Speaker notes complete
- [ ] Slide numbers added (except title/closing)

**Design:**
- [ ] Brand colors used correctly
- [ ] Typography hierarchy consistent
- [ ] All images high resolution
- [ ] Diagrams clearly labeled
- [ ] Animations tested (if used)

**Technical:**
- [ ] Works on presentation laptop
- [ ] Backup copy created
- [ ] Links tested (if clickable)
- [ ] Fonts embedded in PDF export
- [ ] File size manageable (<25MB)

---

## Tools & Resources

### Design Tools:
- **Google Slides** - Primary platform
- **Canva** - Quick icon/graphic creation
- **Figma** - Advanced diagram creation
- **Adobe Color** - Verify contrast ratios

### Icon Resources:
- **Lucide Icons** - https://lucide.dev (Free, MIT)
- **Feather Icons** - https://feathericons.com (Free)
- **Heroicons** - https://heroicons.com (Free, MIT)

### Font Resources:
- **Google Fonts** - Oswald, Roboto (Free)
- **Font Squirrel** - License-safe fonts

### Color Tools:
- **WebAIM Contrast Checker** - Verify readability
- **Coolors.co** - Generate complementary colors

---

## Need Help?

If you're stuck on a specific visual:

1. Sketch it on paper first
2. Use simple shapes (circles, squares, arrows)
3. Less is more—remove everything non-essential
4. Test visibility from 15 feet away
5. Get feedback from someone who hasn't seen it

**Remember:** Your slides support your talk. They're not the talk itself. If a slide doesn't add value, cut it.

---

## You're Ready to Build

You have:
- ✅ Brand-compliant theme script
- ✅ Complete slide content
- ✅ Visual design guidelines
- ✅ Diagram templates
- ✅ Typography standards

**Now go create something that looks as sharp as your content is.**