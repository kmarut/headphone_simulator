/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.
 
 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
 // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void fileChooserListener(GButton source, GEvent event) { //_CODE_:fileChooser:467375:
  println("fileChooser - GButton >> GEvent." + event + " @ " + millis());
  if (audioFile == null) {
    println("no file available");
  } else {
    audioFile.stop();
  }
  selectInput("Select a file to process:", "fileSelected");
} //_CODE_:fileChooser:467375:

public void onButtonListener(GButton source, GEvent event) { //_CODE_:onButton:241170:
  println("onButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:onButton:241170:

public void offButtonListener(GButton source, GEvent event) { //_CODE_:offButton:456926:
  println("offButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:offButton:456926:

public void volumeKnobListener(GKnob knob, GEvent event) { //_CODE_:volumeKnob:757063:
  println("volumeKnob - GKnob >> GEvent." + event + " @ " + millis());
  if (audioFile == null) {
    println("no file available");
  } else {
    audioFile.amp(knob.getValueF());
  }
} //_CODE_:volumeKnob:757063:

public void playButtonListener(GButton source, GEvent event) { //_CODE_:playButton:707513:
  println("playButton - GButton >> GEvent." + event + " @ " + millis());
  if (audioFile == null) {
    println("no file selected");
  } else {
    audioFile.play();
  }
} //_CODE_:playButton:707513:

public void stopButtonListener(GButton source, GEvent event) { //_CODE_:stopButton:521197:
  println("stopButton - GButton >> GEvent." + event + " @ " + millis());
  if (audioFile == null) {
    println("no file available");
  } else {
    audioFile.stop();
  }
} //_CODE_:stopButton:521197:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  fileChooser = new GButton(this, 10, 10, 200, 30);
  fileChooser.setText("Choose File");
  fileChooser.setTextBold();
  fileChooser.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  fileChooser.addEventHandler(this, "fileChooserListener");
  onButton = new GButton(this, 100, 400, 60, 50);
  onButton.setText("ON");
  onButton.setTextBold();
  onButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  onButton.addEventHandler(this, "onButtonListener");
  offButton = new GButton(this, 180, 400, 60, 50);
  offButton.setText("OFF");
  offButton.setTextBold();
  offButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  offButton.addEventHandler(this, "offButtonListener");
  volumeKnob = new GKnob(this, 270, 370, 100, 100, 0.8);
  volumeKnob.setTurnRange(110, 70);
  volumeKnob.setTurnMode(GKnob.CTRL_ANGULAR);
  volumeKnob.setShowArcOnly(false);
  volumeKnob.setOverArcOnly(false);
  volumeKnob.setIncludeOverBezel(false);
  volumeKnob.setShowTrack(true);
  volumeKnob.setLimits(0.5, 0.0, 1.0);
  volumeKnob.setNbrTicks(100);
  volumeKnob.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  volumeKnob.setOpaque(false);
  volumeKnob.addEventHandler(this, "volumeKnobListener");
  controlLabel = new GLabel(this, 90, 330, 180, 60);
  controlLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  controlLabel.setText("Headphone Controls");
  controlLabel.setTextBold();
  controlLabel.setLocalColorScheme(GCScheme.RED_SCHEME);
  controlLabel.setOpaque(false);
  playButton = new GButton(this, 780, 420, 60, 40);
  playButton.setText("PLAY");
  playButton.setTextBold();
  playButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  playButton.addEventHandler(this, "playButtonListener");
  stopButton = new GButton(this, 860, 420, 60, 40);
  stopButton.setText("STOP");
  stopButton.setTextBold();
  stopButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  stopButton.addEventHandler(this, "stopButtonListener");
}

// Variable declarations 
// autogenerated do not edit
GButton fileChooser; 
GButton onButton; 
GButton offButton; 
GKnob volumeKnob; 
GLabel controlLabel; 
GButton playButton; 
GButton stopButton; 