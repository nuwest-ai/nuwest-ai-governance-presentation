/**
 * nuwest.ai Branded Google Slides Theme
 * 
 * INSTRUCTIONS:
 * 1. Open Google Slides and create a new blank presentation
 * 2. Go to Extensions > Apps Script
 * 3. Delete any default code
 * 4. Paste this entire script
 * 5. Click the disk icon to save
 * 6. Click "Run" > Select "createNuwestTheme"
 * 7. Authorize the script when prompted
 * 8. Return to your slides - they're now branded!
 */

function createNuwestTheme() {
  const presentation = SlidesApp.getActivePresentation();
  const pageWidth = 10; // inches (standard 16:9)
  const pageHeight = 5.625; // inches
  
  // nuwest.ai Brand Colors
  const COLORS = {
    signalYellow: '#FFD400',
    matteBlack: '#0D0D0D',
    carbonGrey: '#1F1F1F',
    softWhite: '#F5F5F5',
    electricTeal: '#00E6C3'
  };
  
  // Create Master Slides
  createTitleSlide(presentation, COLORS);
  createSectionHeaderSlide(presentation, COLORS);
  createContentSlide(presentation, COLORS);
  createDataSlide(presentation, COLORS);
  createClosingSlide(presentation, COLORS);
  
  Logger.log('✓ nuwest.ai theme applied successfully!');
  Logger.log('Refresh your slides to see the new layouts.');
}

function createTitleSlide(presentation, COLORS) {
  const slide = presentation.appendSlide(SlidesApp.PredefinedLayout.BLANK);
  
  // Black background
  const background = slide.getBackground();
  background.setSolidFill(COLORS.matteBlack);
  
  // Yellow accent bar at top
  const accentBar = slide.insertShape(SlidesApp.ShapeType.RECTANGLE, 0, 0, 10, 0.3);
  accentBar.getFill().setSolidFill(COLORS.signalYellow);
  accentBar.setLinkUrl(null);
  
  // Title (Space Grotesk style - using Impact as substitute)
  const titleBox = slide.insertTextBox("PRESENTATION TITLE", 0.5, 1.5, 9, 1.5);
  const titleText = titleBox.getText();
  titleText.getParagraphStyle().setParagraphAlignment(SlidesApp.ParagraphAlignment.CENTER);
  const titleStyle = titleText.getTextStyle();
  titleStyle.setFontFamily('Oswald') // Bold sans-serif closest to Space Grotesk
           .setFontSize(54)
           .setBold(true)
           .setForegroundColor(COLORS.signalYellow);
  
  // Subtitle (IBM Plex Sans style - using Open Sans)
  const subtitleBox = slide.insertTextBox("Your Subtitle Here", 0.5, 3.2, 9, 0.6);
  const subtitleText = subtitleBox.getText();
  subtitleText.getParagraphStyle().setParagraphAlignment(SlidesApp.ParagraphAlignment.CENTER);
  const subtitleStyle = subtitleText.getTextStyle();
  subtitleStyle.setFontFamily('Roboto') // Clean sans closest to IBM Plex Sans
               .setFontSize(24)
               .setBold(false)
               .setForegroundColor(COLORS.softWhite);
  
  // Footer with branding
  const footerBox = slide.insertTextBox("nuwest.ai", 0.5, 5, 2, 0.4);
  const footerText = footerBox.getText();
  const footerStyle = footerText.getTextStyle();
  footerStyle.setFontFamily('Oswald')
             .setFontSize(16)
             .setBold(true)
             .setForegroundColor(COLORS.signalYellow);
  
  slide.setTitle("Title Slide");
}

function createSectionHeaderSlide(presentation, COLORS) {
  const slide = presentation.appendSlide(SlidesApp.PredefinedLayout.BLANK);
  
  // Carbon grey background
  const background = slide.getBackground();
  background.setSolidFill(COLORS.carbonGrey);
  
  // Yellow vertical accent bar on left
  const accentBar = slide.insertShape(SlidesApp.ShapeType.RECTANGLE, 0, 0, 0.15, 5.625);
  accentBar.getFill().setSolidFill(COLORS.signalYellow);
  
  // Section title
  const titleBox = slide.insertTextBox("SECTION TITLE", 0.7, 2, 8.5, 1.5);
  const titleText = titleBox.getText();
  titleText.getParagraphStyle().setParagraphAlignment(SlidesApp.ParagraphAlignment.START);
  const titleStyle = titleText.getTextStyle();
  titleStyle.setFontFamily('Oswald')
           .setFontSize(48)
           .setBold(true)
           .setForegroundColor(COLORS.signalYellow);
  
  slide.setTitle("Section Header");
}

function createContentSlide(presentation, COLORS) {
  const slide = presentation.appendSlide(SlidesApp.PredefinedLayout.BLANK);
  
  // Black background
  const background = slide.getBackground();
  background.setSolidFill(COLORS.matteBlack);
  
  // Yellow header bar
  const headerBar = slide.insertShape(SlidesApp.ShapeType.RECTANGLE, 0, 0, 10, 0.5);
  headerBar.getFill().setSolidFill(COLORS.signalYellow);
  
  // Slide title in header
  const titleBox = slide.insertTextBox("Slide Title", 0.3, 0.05, 9, 0.4);
  const titleText = titleBox.getText();
  const titleStyle = titleText.getTextStyle();
  titleStyle.setFontFamily('Oswald')
           .setFontSize(24)
           .setBold(true)
           .setForegroundColor(COLORS.matteBlack);
  
  // Content area placeholder
  const contentBox = slide.insertTextBox("• Key point 1\n• Key point 2\n• Key point 3", 0.5, 1, 9, 4);
  const contentText = contentBox.getText();
  const contentStyle = contentText.getTextStyle();
  contentStyle.setFontFamily('Roboto')
              .setFontSize(18)
              .setForegroundColor(COLORS.softWhite);
  contentText.getParagraphStyle().setLineSpacing(150);
  
  slide.setTitle("Content Slide");
}

function createDataSlide(presentation, COLORS) {
  const slide = presentation.appendSlide(SlidesApp.PredefinedLayout.BLANK);
  
  // Black background
  const background = slide.getBackground();
  background.setSolidFill(COLORS.matteBlack);
  
  // Teal accent corner
  const accentCorner = slide.insertShape(SlidesApp.ShapeType.RECTANGLE, 9, 0, 1, 0.8);
  accentCorner.getFill().setSolidFill(COLORS.electricTeal);
  
  // Title
  const titleBox = slide.insertTextBox("Data & Statistics", 0.5, 0.5, 8, 0.5);
  const titleText = titleBox.getText();
  const titleStyle = titleText.getTextStyle();
  titleStyle.setFontFamily('Oswald')
           .setFontSize(32)
           .setBold(true)
           .setForegroundColor(COLORS.signalYellow);
  
  // Large stat placeholder
  const statBox = slide.insertTextBox("97%", 1.5, 2, 3, 1.5);
  const statText = statBox.getText();
  const statStyle = statText.getTextStyle();
  statStyle.setFontFamily('Oswald')
           .setFontSize(96)
           .setBold(true)
           .setForegroundColor(COLORS.electricTeal);
  
  // Stat description
  const descBox = slide.insertTextBox("Organizations lacking AI access controls", 1.5, 3.5, 7, 0.8);
  const descText = descBox.getText();
  const descStyle = descText.getTextStyle();
  descStyle.setFontFamily('Roboto')
           .setFontSize(18)
           .setForegroundColor(COLORS.softWhite);
  
  slide.setTitle("Data Slide");
}

function createClosingSlide(presentation, COLORS) {
  const slide = presentation.appendSlide(SlidesApp.PredefinedLayout.BLANK);
  
  // Black background
  const background = slide.getBackground();
  background.setSolidFill(COLORS.matteBlack);
  
  // Large yellow nuwest.ai branding
  const brandBox = slide.insertTextBox("nuwest.ai", 2, 1.5, 6, 1.2);
  const brandText = brandBox.getText();
  brandText.getParagraphStyle().setParagraphAlignment(SlidesApp.ParagraphAlignment.CENTER);
  const brandStyle = brandText.getTextStyle();
  brandStyle.setFontFamily('Oswald')
           .setFontSize(72)
           .setBold(true)
           .setForegroundColor(COLORS.signalYellow);
  
  // Tagline
  const taglineBox = slide.insertTextBox("Cut through the noise.", 2, 2.8, 6, 0.5);
  const taglineText = taglineBox.getText();
  taglineText.getParagraphStyle().setParagraphAlignment(SlidesApp.ParagraphAlignment.CENTER);
  const taglineStyle = taglineText.getTextStyle();
  taglineStyle.setFontFamily('Roboto')
              .setFontSize(24)
              .setForegroundColor(COLORS.softWhite)
              .setItalic(true);
  
  // Contact info placeholder
  const contactBox = slide.insertTextBox("your.email@nuwest.ai", 2, 4, 6, 0.4);
  const contactText = contactBox.getText();
  contactText.getParagraphStyle().setParagraphAlignment(SlidesApp.ParagraphAlignment.CENTER);
  const contactStyle = contactText.getTextStyle();
  contactStyle.setFontFamily('Roboto')
              .setFontSize(16)
              .setForegroundColor(COLORS.electricTeal);
  
  slide.setTitle("Closing Slide");
}

/**
 * Creates a menu in Google Slides for easy access
 */
function onOpen() {
  SlidesApp.getUi()
    .createMenu('nuwest.ai')
    .addItem('Apply Brand Theme', 'createNuwestTheme')
    .addToUi();
}