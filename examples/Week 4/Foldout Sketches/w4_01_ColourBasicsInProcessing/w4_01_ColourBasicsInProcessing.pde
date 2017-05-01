/*
 * Creative Coding
 * Week 4, Foldout 01: Colour in Processing
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
    
 * This program illustrates the use of different colour modes in Processing
 * See the foldout associated with this sketch for more details
 * 
 */

void setup() {
  size(295, 415);
  colorMode(RGB, 200);  // set RGB colour mode, range between 0 and 200
}

void draw() {
  background(255);

  colorMode(HSB, 255, 100, 100); // set HSB colour mode with limits shown
  for (int i=0; i<255; i++) {
    for (int j=0; j<100; j++) {
      stroke(i, j, 100);
      point(20+i, 20+j);
    }
  }

  colorMode(RGB, 255, 255, 255);
  for (int i=0; i<255; i++) {
    for (int j=0; j<255; j++) {
      float bValue = map (mouseY, 0, height, 0, 255);
      stroke(i, j, bValue);
      point(20+i, 140+j);
    }
  }
}