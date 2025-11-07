# PDF Export Instructions

## Generating the PDF Booklet

The presentation can be exported as a high-quality PDF for sharing, printing, or offline viewing.

---

## Method 1: Browser Print (Recommended)

### Step 1: Start Local Server

```bash
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.5
python3 -m http.server 8000
```

### Step 2: Open Print-PDF URL

Open your browser and navigate to:
```
http://localhost:8000/?print-pdf
```

**Important:** The `?print-pdf` query parameter activates reveal.js's PDF export mode, which:
- Removes slide transitions
- Displays all slides in a single vertical layout
- Optimizes for print/PDF rendering
- Preserves speaker notes (if enabled)

### Step 3: Print to PDF

1. **Chrome/Edge:** Press `Cmd+P` (Mac) or `Ctrl+P` (Windows)
2. **Configure Print Settings:**
   - **Destination:** Save as PDF
   - **Layout:** Portrait
   - **Margins:** None (or Minimal)
   - **Background graphics:** Enabled (CRITICAL - ensures yellow/black branding)
   - **Page size:** Letter or A4
3. **Click "Save"**

**Recommended Filename:** `nuwest-ai-governance-blind-spot-v0.5.pdf`

---

## Method 2: decktape (Advanced)

For automated or higher-quality exports, use [decktape](https://github.com/astefanutti/decktape):

### Installation

```bash
npm install -g decktape
```

### Generate PDF

```bash
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.5

# Start server in background
python3 -m http.server 8000 &

# Generate PDF
decktape reveal http://localhost:8000 nuwest-ai-governance-blind-spot-v0.5.pdf \
  --size 1920x1080 \
  --pause 1000

# Stop server
killall python3
```

**Parameters:**
- `--size 1920x1080`: Match presentation dimensions (Full HD)
- `--pause 1000`: Wait 1 second per slide for rendering (adjust if needed)

---

## Troubleshooting

### Issue: Background colors not appearing

**Solution:** Ensure "Background graphics" is enabled in print settings. Without this, the yellow/black branding will be lost.

### Issue: Fonts look different

**Solution:** Fonts are embedded via local files in `assets/fonts/`. Ensure you're printing from the local server (not opening `index.html` directly as a file).

### Issue: Fragment animations appear all at once

**Expected Behavior:** In PDF mode, all fragments (click-to-reveal elements) display immediately. This is intentional for static PDF viewing.

### Issue: Slides are cut off

**Solution:** Set margins to "None" or "Minimal" in print settings. Reveal.js handles its own slide spacing.

---

## PDF Booklet Specifications

**Output Format:**
- **Dimensions:** 1920x1080 (16:9 aspect ratio)
- **Total Pages:** 45 slides
- **File Size:** ~2-5 MB (depending on images, if added)
- **Colors:** Signal Yellow (#FFD300), Charcoal Black (#111111), White (#FFFFFF)

**Brand Compliance:**
- nuwest.ai >> logo appears on title and closing slides
- Chakra Petch font for logo
- IBM Plex Sans for headers
- Inconsolata for body text

**Content Preservation:**
- All 45 slides included
- All citations preserved
- Speaker notes included (if decktape `--notes` flag used)
- Fragment content displayed in order

---

## Distribution Recommendations

**File Naming Convention:**
```
nuwest-ai-governance-blind-spot-v0.5-[DATE].pdf
```

Example: `nuwest-ai-governance-blind-spot-v0.5-2025-11-12.pdf`

**Sharing:**
- Email attachment (under 5MB)
- Google Drive / Dropbox link
- nuwest.ai website download
- LinkedIn SlideShare (if public)

**Metadata (Optional):**
- **Title:** The AI Governance Blind Spot
- **Subtitle:** Why Your Data Protection Strategy Isn't Ready for Machine Learning
- **Author:** Neil Ashworth, nuwest.ai
- **Date:** November 12, 2025
- **Version:** 0.5 (Condensed)

---

## Next Steps After Export

1. **Review PDF** to ensure:
   - All slides rendered correctly
   - Fonts are sharp and legible
   - Colors match brand (yellow/black)
   - No cut-off text

2. **Distribute** to CISO Forum attendees

3. **Archive** in presentations folder for version control

---

**Last Updated:** 2025-11-07
**Version:** 0.5
**Status:** Ready for export
