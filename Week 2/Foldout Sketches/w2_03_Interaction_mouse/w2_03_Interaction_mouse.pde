/*
 * Creative Coding
 * Week 2, Foldout 04: Basic Mouse Interaction
 * by Indae Hwang and Jon McCormack
 * Updated 2016
 * Copyright (c) 2014-2016 Monash University

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
    
 * This sketch shows how to do interaction with the mouse.
 * Try pressing, releasing, clicking and dragging the mouse and observe the results.
 * When each event happens the sketch also prints a message in the console.
 *
 */
 
int circleWidth;
int strokeWeightValue;
int backgroundValue;
int strokeColorValue;
boolean buttonOn;

void setup() {
  size(300, 300);
  circleWidth = 50;
  backgroundValue = 120;
  strokeWeightValue = 40;
  strokeColorValue = 80;
  fill(255,0,0);
}

void draw() {
  background(backgroundValue);
  stroke(strokeColorValue);
  strokeWeight(strokeWeightValue);
  ellipse(150, 150, circleWidth, circleWidth);
  
  if(mousePressed){
     strokeColorValue = 50 + mouseY/5;
  }

}

void mousePressed() {
  println("The mouse button was pressed");
  
  circleWidth = 150;
}

void mouseReleased() {
  println("The mouse button was released");
  circleWidth = 50;
}

void mouseClicked() {
  println("The mouse button was clicked");
  if (buttonOn) {
    fill(255,0,0);
    buttonOn = false;
  }else{
    fill(0,255,0);
    buttonOn = true;
  }
}

void mouseDragged(){
  println("The mouse is being dragged");
  strokeWeightValue = mouseX/10;
}