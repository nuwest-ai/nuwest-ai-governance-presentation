# How to Run the HTML Presentation Locally

## Quick Start (Recommended Method)

The presentation uses reveal.js and requires a local web server to run properly.

### Option 1: Python Simple HTTP Server (Easiest)

**Step 1:** Open Terminal and navigate to the presentation directory
```bash
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.2
```

**Step 2:** Start a simple HTTP server
```bash
# If you have Python 3 (most Macs do):
python3 -m http.server 8000

# If you have Python 2:
python -m SimpleHTTPServer 8000
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
cd /Users/home/Documents/nuwest/2026/presentations/presentation-v0.2
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

**Step 2:** Open the presentation folder in VS Code

**Step 3:** Right-click on `index.html` and select "Open with Live Server"

**Step 4:** Browser will open automatically

---

## Presentation Controls

Once the presentation is running:

- **Arrow Keys / Space:** Navigate slides
- **F:** Enter fullscreen
- **S:** Open speaker notes (shows your notes in a separate window)
- **B:** Blackout screen (press B to toggle)
- **ESC:** Overview mode (see all slides at once)
- **?:** Show keyboard shortcuts

---

## Speaker Notes Mode

For practicing or delivering:

**Step 1:** Open the presentation in your browser (http://localhost:8000)

**Step 2:** Press `S` on your keyboard

**Step 3:** A new window opens showing:
- Current slide (what audience sees)
- Speaker notes (only you see these)
- Next slide preview
- Timer

**Step 4:** Use this window on your laptop screen, share the main presentation window

---

## File Structure

```
presentation-v0.2/
├── index.html          # Main HTML file (don't need to edit)
├── slides.md           # Your presentation content (edit this!)
├── theme.css           # nuwest.ai yellow/black styling
├── assets/             # Images, logos, etc.
│   ├── logo.svg
│   └── favicon.svg
└── README.md
```

**To update content:** Edit `slides.md`, save, and refresh your browser.

---

## Troubleshooting

**Problem:** Slides don't load / shows file listing
**Solution:** You need a web server - can't just open index.html directly. Use Option 1 above.

**Problem:** Fonts look wrong
**Solution:** Make sure you have internet connection (fonts load from Google Fonts)

**Problem:** Speaker notes don't open
**Solution:** Make sure popups aren't blocked in your browser

**Problem:** Changes to slides.md don't show up
**Solution:** Hard refresh the browser (Cmd + Shift + R on Mac)

---

## Creating a New Version

When you want to work on a new version:

**Step 1:** Duplicate the folder
```bash
cd /Users/home/Documents/nuwest/2026/presentations/
cp -r presentation-v0.2 presentation-v0.3
```

**Step 2:** Edit the new version
```bash
cd presentation-v0.3
# Edit slides.md with your text editor
```

**Step 3:** Test it
```bash
python3 -m http.server 8000
# Open http://localhost:8000 in browser
```

---

## For Recording the Presentation

**Option 1: Record in Speaker Notes Mode**
- Open speaker notes (press S)
- Use screen recording software (QuickTime, OBS, etc.)
- Record the main presentation window
- Use speaker notes window for your reference

**Option 2: Practice Mode**
- Navigate to http://localhost:8000/?print-pdf
- This creates a printable/recordable version
- All slides show as one long page
- Good for checking flow before recording

---

**Questions?** Let me know if you run into any issues, Ash.

— Mike
