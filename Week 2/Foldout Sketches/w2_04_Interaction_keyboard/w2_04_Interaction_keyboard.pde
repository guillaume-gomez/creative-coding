/*
 * Creative Coding
 * Week 2, Foldout 04: Basic Keyboard Interaction
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
    
 * This sketch shows how to do interaction with the keyboard.
 * Holding the 'a' key increases the brightness of the background, pressing 's' decreases it
 * Pressing the 'c' key momentarily changes the size of the circle.
 *
 */

int circleWidth;
int backgroundValue;

void setup() {
  size(300, 300);
  circleWidth =   50;
  backgroundValue = 120;
}


void draw() {
  background(backgroundValue);
  noStroke();
  ellipse(150, 150, circleWidth, circleWidth);
  
  if (keyPressed) {
    if (key == 'a') {
      backgroundValue ++;
    } else if (key == 's') {
      backgroundValue --;
    }
    // ensure backgroundValue is constrianed between 0 and 255
    backgroundValue = constrain(backgroundValue,0,255);
  }
  
}


void keyPressed() {
  if (key == 'c') {
    circleWidth = 150;
  }
  
  println("Pressed " + key + " " + keyCode);
}   

void keyReleased() {
  if (key == 'c') {
    circleWidth = 50;
  }
  
  println("Released " + key + " " + keyCode);
}