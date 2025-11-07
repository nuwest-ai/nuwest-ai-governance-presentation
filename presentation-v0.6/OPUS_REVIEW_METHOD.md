# How to Review the Presentation with Opus

## TL;DR

**Yes, you can use Opus to review the site. The MCP fetch tool is already available.**

---

## Method 1: Direct Review (Recommended - Easiest)

### Setup

1. **Start the local web server:**
```bash
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4
python3 -m http.server 8000
```

2. **Open a new Claude Code session** (or use existing Opus instance)

3. **Ask Opus to review the presentation:**

```
Please review the presentation at http://localhost:8000

Fetch the main page and analyze:
1. Visual design and brand consistency (yellow/black/white palette)
2. Typography and readability (IBM Plex Sans headers, Inconsolata body)
3. Color contrast issues
4. Content structure and flow
5. Accessibility concerns
6. Suggestions for improvement

Focus on:
- Legibility on different backgrounds
- Visual hierarchy
- Balance between text and graphics
- Transition effectiveness (if observable from HTML)
```

### What Opus Can See

The `mcp__MCP_DOCKER__fetch` tool can:
- ✅ Fetch the HTML content
- ✅ See the structure and markup
- ✅ Analyze CSS styling
- ✅ Review content organization
- ✅ Check accessibility markup
- ✅ Identify contrast issues in code

### What Opus Cannot See

- ❌ Actual rendered visual appearance
- ❌ Font rendering quality
- ❌ Dynamic JavaScript transitions
- ❌ Speaker notes content
- ❌ How graphics/icons actually display

---

## Method 2: Screenshot Review (Most Comprehensive)

### Process

1. **Run the presentation locally:**
```bash
cd presentation-v0.4
python3 -m http.server 8000
# Open http://localhost:8000 in browser
```

2. **Take screenshots of key slides:**
   - Title slide
   - Section headers (yellow background slides)
   - Content slides (white background)
   - Quote/callout boxes
   - Any problematic slides

3. **Save screenshots to:**
```bash
mkdir -p assets/screenshots
# Save as: slide_01.png, slide_02.png, etc.
```

4. **Ask Opus to review screenshots:**

```
I've taken screenshots of the presentation. Please review the following images and analyze:

[Attach screenshots]

1. Color contrast and readability
2. Font rendering and hierarchy
3. Visual balance and spacing
4. Brand consistency
5. Areas that are too text-heavy
6. Suggested improvements

Pay special attention to yellow text on yellow backgrounds and yellow emphasis on white backgrounds.
```

**Opus can analyze images directly** and provide specific visual feedback.

---

## Method 3: Markdown Content Review

### Process

1. **Ask Opus to review the slides.md file directly:**

```
Please review the file: /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4/slides.md

Analyze:
1. Content structure and flow
2. Information density per slide
3. Balance between text and visual cues
4. Speaker notes quality
5. Opportunities to add graphics/diagrams
6. Slides that are too text-heavy

Suggest where to add:
- Icons
- Charts/graphs
- Diagrams
- Visual separators
- Callout boxes
```

This allows Opus to:
- ✅ Review content structure
- ✅ Identify text-heavy slides
- ✅ Suggest visual enhancements
- ✅ Evaluate speaker notes
- ✅ Recommend restructuring

---

## Method 4: Automated Testing Review

### Setup (Advanced)

If you want a more systematic review, you can create a review script:

```bash
# Create review script
cat > review_presentation.sh << 'EOF'
#!/bin/bash

# Start server in background
python3 -m http.server 8000 &
SERVER_PID=$!

# Wait for server to start
sleep 2

# Fetch presentation
curl http://localhost:8000 > presentation_snapshot.html

# Kill server
kill $SERVER_PID

echo "Presentation snapshot saved to presentation_snapshot.html"
EOF

chmod +x review_presentation.sh
./review_presentation.sh
```

Then ask Opus:
```
Please review the file presentation_snapshot.html and analyze the rendered HTML structure, CSS, and content for issues.
```

---

## Specific Review Questions for Opus

### Color Contrast

```
Review the CSS file at /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4/theme.css

Check for:
1. Yellow text (#FFD300) on yellow backgrounds (#FFD300) - should be BLACK
2. Yellow emphasis text on white backgrounds - sufficient contrast?
3. Proper contrast ratios (WCAG AA compliance)
4. Color-blind friendly combinations

List all violations and suggest fixes.
```

### Typography Review

```
Review font usage in theme.css:

1. Are local fonts (@font-face) loaded correctly?
2. Is IBM Plex Sans used for headers?
3. Is Inconsolata used for body text?
4. Is Chakra Petch used only for logo?
5. Are fallback fonts appropriate?

Verify font stack hierarchy.
```

### Visual Balance

```
Review slides.md and identify:

1. Slides with >200 words (too text-heavy)
2. Slides lacking visual elements
3. Opportunities for:
   - Icon placement
   - Diagram insertion
   - Chart/graph representation
   - Visual separators

Provide specific slide numbers and recommendations.
```

---

## MCP Server Setup (If Needed)

You already have `mcp__MCP_DOCKER__fetch` available, but if you need web browsing:

### Option A: Use Existing MCP Fetch (Sufficient for Most Reviews)

Already available:
- `mcp__MCP_DOCKER__fetch` - Fetches URLs and converts HTML to markdown

### Option B: Add Playwright MCP for Browser Automation (Optional)

If you need actual browser rendering:

1. **Find Playwright MCP server:**
```
mcp-find query="playwright" or "browser"
```

2. **Add if available:**
```
mcp-add name="playwright-server"
```

3. **Configure for localhost:**
```
mcp-config-set server="playwright-server" key="allow_localhost" value=true
```

**Note:** This is overkill for most reviews. Screenshot review (Method 2) is simpler.

---

## Sample Opus Prompts

### Comprehensive Review

```
I need you to review my nuwest.ai presentation for the CISO Forum.

**Context:**
- Brand colors: Yellow (#FFD300), Black (#000000), White (#FFFFFF)
- Fonts: IBM Plex Sans (headers), Inconsolata (body), Chakra Petch (logo only)
- Tone: Dry, direct, minimal, "Facts, not fear"
- Duration: 45-60 minutes
- Audience: CISOs and security executives

**Files to review:**
1. /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4/slides.md (content)
2. /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4/theme.css (styling)
3. /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4/index.html (structure)

**Review criteria:**
1. Color contrast issues (yellow on yellow, yellow on white)
2. Font usage correctness
3. Text-to-visual ratio (too text-heavy?)
4. Brand consistency
5. Content flow and pacing
6. Accessibility (WCAG AA compliance)

**Deliverables:**
- List of color contrast violations with specific slide numbers
- Font usage errors
- Slides that need graphics/icons (with suggestions)
- Overall readability score
- Top 5 improvement recommendations

Start with the CSS file to check color contrast rules, then review slides.md for content issues.
```

### Quick Contrast Check

```
Read /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4/theme.css

Find all instances where:
1. Yellow text is used on yellow backgrounds
2. Yellow text is used on white backgrounds without sufficient contrast
3. Bold/strong text styling that might be hard to read

Report each violation with:
- Line number
- CSS selector
- Current rule
- Suggested fix
- WCAG contrast ratio (if calculable)
```

### Content Structure Review

```
Read /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4/slides.md

Analyze each slide and create a table:

| Slide # | Title | Word Count | Has Visual? | Needs Graphic | Suggestion |
|---------|-------|------------|-------------|---------------|------------|
| 1       | ...   | 50         | No          | Yes           | Add icon   |

Focus on slides with >150 words or pure text content.
```

---

## Expected Limitations

### What Opus Can Do Well:
- ✅ Analyze code structure (HTML, CSS, Markdown)
- ✅ Identify contrast issues in CSS rules
- ✅ Review content organization
- ✅ Suggest improvements based on code
- ✅ Check accessibility markup
- ✅ Analyze screenshots (if provided)

### What Opus Cannot Do:
- ❌ See the actual rendered presentation
- ❌ Test transitions in real-time
- ❌ Evaluate font rendering quality
- ❌ Experience the presentation flow dynamically
- ❌ See JavaScript effects

**Recommendation:** Combine Opus code review with your own visual inspection.

---

## Workflow for Complete Review

**Step 1:** Opus code review (30 min)
```
Review theme.css for color contrast violations
Review slides.md for text-heavy content
Review index.html for structure issues
```

**Step 2:** Your visual review (15 min)
```
Run presentation locally
Navigate through all slides
Note slides that look off
Take screenshots of issues
```

**Step 3:** Opus screenshot review (20 min)
```
Share screenshots with Opus
Get specific visual feedback
Request design improvements
```

**Step 4:** Iterate (variable)
```
Implement Opus suggestions
Re-review
Repeat until satisfied
```

---

## Quick Command Reference

**Start server:**
```bash
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4
python3 -m http.server 8000
```

**Ask Opus to fetch:**
```
Use mcp__MCP_DOCKER__fetch tool to review http://localhost:8000
```

**Ask Opus to read local file:**
```
Read /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4/slides.md and analyze...
```

**Take screenshot (macOS):**
```
Cmd + Shift + 4, then drag to select area
```

---

## Bottom Line

**Best approach for your situation:**

1. **Start local server** (python3 -m http.server 8000)
2. **Take 5-10 screenshots** of key slides
3. **Ask Opus to review:**
   - Screenshots (visual issues)
   - theme.css (contrast issues)
   - slides.md (content/text density)
4. **Implement suggestions**
5. **Re-review**

**Estimated time:** 1-2 hours for comprehensive review and fixes

---

**Ready to review, Ash. Let me know if you need help with any of these methods.**
