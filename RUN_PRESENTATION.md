# How to Run the Presentation

## Quick Start (Recommended)

The presentation requires a local web server to run properly due to reveal.js loading external markdown files.

### Option 1: Python HTTP Server (Easiest - Works on Mac/Linux/Windows)

**Step 1:** Open Terminal and navigate to the presentation directory
```bash
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4
```

**Step 2:** Start a simple HTTP server
```bash
# Python 3 (recommended - comes with macOS)
python3 -m http.server 8000

# OR if you have Python 2
python -m SimpleHTTPServer 8000
```

You should see:
```
Serving HTTP on :: port 8000 (http://[::]:8000/) ...
```

**Step 3:** Open your web browser and go to:
```
http://localhost:8000
```

**Step 4:** To stop the server when done:
- Press `Ctrl + C` in the Terminal window

---

### Option 2: Node.js http-server (If you have Node installed)

**Step 1:** Install http-server globally (one-time setup)
```bash
npm install -g http-server
```

**Step 2:** Navigate to presentation directory
```bash
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4
```

**Step 3:** Start the server
```bash
http-server -p 8000
```

**Step 4:** Open browser to:
```
http://localhost:8000
```

---

### Option 3: VS Code Live Server Extension

**If you use Visual Studio Code:**

**Step 1:** Install the "Live Server" extension by Ritwick Dey

**Step 2:** Open the `presentation-v0.4` folder in VS Code

**Step 3:** Right-click on `index.html` and select **"Open with Live Server"**

**Step 4:** Browser will open automatically

---

## Presentation Controls

Once the presentation is running in your browser:

### Navigation
- **Arrow Keys:** Navigate slides (Left/Right for horizontal, Up/Down for vertical if any)
- **Space Bar:** Next slide
- **Shift + Space:** Previous slide
- **Home:** First slide
- **End:** Last slide

### Presentation Mode
- **F:** Enter fullscreen mode
- **ESC:** Exit fullscreen / Overview mode (see all slides)
- **S:** Open speaker notes window (**Important for practicing!**)
- **B:** Blackout screen (toggle black screen)
- **?:** Show all keyboard shortcuts

### Navigation Helpers
- **Ctrl/Cmd + Click:** Zoom in on element
- **Alt + Click:** Zoom out

---

## Speaker Notes Mode (Critical for Practice/Delivery)

**Step 1:** Start the presentation (http://localhost:8000)

**Step 2:** Press `S` on your keyboard

**Step 3:** A new window opens showing:
- **Left panel:** Current slide (what audience sees)
- **Right panel:** Speaker notes (only you see these)
- **Bottom:** Next slide preview
- **Timer:** Presentation timer

**Step 4:** Position windows:
- **Speaker notes window:** Your laptop screen (only you see)
- **Main presentation window:** External display/projector (audience sees)

This is how you'll practice and deliver the presentation.

---

## Recording the Presentation

### For Nov 10th Deadline

**Option 1: Screen Recording with Speaker Notes**

1. Open speaker notes mode (press `S`)
2. Position main presentation window for recording
3. Use screen recording software:
   - **macOS:** QuickTime Player → File → New Screen Recording
   - **Windows:** OBS Studio or Xbox Game Bar
   - **Cross-platform:** OBS Studio (free)

4. Record the main presentation window while reading from speaker notes

**Option 2: Practice Mode**

1. Navigate to: `http://localhost:8000/?print-pdf`
2. This shows all slides in sequence (no transitions)
3. Good for reviewing flow before recording

---

## Customizing the Presentation

### Editing Content

**Edit slides:**
```bash
# Open slides.md in your text editor
open slides.md

# Or use VS Code
code slides.md
```

**After editing:**
1. Save the file
2. Refresh browser (Cmd/Ctrl + R)
3. Changes appear immediately

### Editing Theme/Styling

**Edit theme.css:**
```bash
open theme.css
```

Modify colors, fonts, spacing as needed. Refresh browser to see changes.

---

## Troubleshooting

**Problem:** Slides don't load / Shows file listing
**Solution:** You need a web server - can't just open `index.html` directly in browser. Use Python method above.

**Problem:** Fonts look wrong
**Solution:** Ensure internet connection (Chakra Petch font loads from Google Fonts)

**Problem:** Speaker notes don't open
**Solution:**
- Check if browser is blocking popups
- Allow popups for localhost
- Try different browser (Chrome/Firefox work best)

**Problem:** Changes to slides.md don't show up
**Solution:** Hard refresh browser
- **macOS:** Cmd + Shift + R
- **Windows:** Ctrl + Shift + R
- Or clear browser cache

**Problem:** Transitions feel too slow/fast
**Solution:** Edit `index.html` line 103:
```javascript
transitionSpeed: 'default', // Change to 'fast' or 'slow'
```

---

## Export Options

### PDF Export

**Step 1:** Add `?print-pdf` to URL:
```
http://localhost:8000/?print-pdf
```

**Step 2:** Use browser's print function:
- **macOS:** Cmd + P
- **Windows:** Ctrl + P

**Step 3:** Select "Save as PDF" as destination

**Step 4:** Configure:
- Layout: Portrait
- Margins: None
- Background graphics: Enabled

**Step 5:** Save

This creates a PDF with one slide per page, suitable for sharing.

---

## Testing Before Nov 10th

### Practice Run Checklist

- [ ] Start local server
- [ ] Open presentation in browser
- [ ] Open speaker notes mode (S key)
- [ ] Navigate through all slides
- [ ] Time yourself (aim for 45-60 minutes)
- [ ] Test screen recording setup
- [ ] Check audio levels
- [ ] Verify all citations are visible
- [ ] Test transitions and animations

### Pre-Recording Checklist

- [ ] Close unnecessary applications
- [ ] Disable notifications
- [ ] Prepare water/coffee
- [ ] Test microphone
- [ ] Position speaker notes window
- [ ] Full screen main presentation
- [ ] Do a test recording (1-2 slides)
- [ ] Review test recording quality
- [ ] Begin full recording

---

## Common Shell Commands (Quick Reference)

```bash
# Start presentation (Python 3)
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4 && python3 -m http.server 8000

# Then open browser to http://localhost:8000
```

```bash
# Stop server
# Press Ctrl + C in terminal
```

```bash
# Check if port 8000 is already in use
lsof -ti:8000

# Kill process on port 8000 if needed
kill -9 $(lsof -ti:8000)
```

---

## Need Help?

**File locations:**
- Presentation root: `/Users/home/Documents/nuwest/2026/presentations/presentation-v0.4`
- Slides content: `slides.md`
- Theme/styling: `theme.css`
- HTML structure: `index.html`

**Check presentation structure:**
```bash
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.4
ls -la
```

Expected output:
```
index.html
slides.md
theme.css
README.md
RUN_PRESENTATION.md
assets/
```

---

**Ready to present, Ash. Good luck on Nov 10th!**

— Mike
