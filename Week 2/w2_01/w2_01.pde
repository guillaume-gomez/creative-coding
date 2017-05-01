/*
 * Creative Coding
 * Week 2, 01 - Nine Squares
 * by Indae Hwang
 * Updated 2016
 * Copyright (c) 2016 Monash University

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
    
 * This program draws 3 rows of 3 squares in the display window
 * Each row is coloured red, green, and blue.
 * Each rectangle is draw individually, meaning there are 9 rect calls.
 * 
 */

void setup() {
  size(600, 600);
  background(180);
  noLoop();  // only execute the draw function once
  rectMode(CENTER); // set the rectangle drawing mode to specify the rectangle's centre
  noStroke();
}


void draw() {

  // row 1: red
  fill(255, 0, 0);
  rect(150, 150, 100, 100);
  rect(300, 150, 100, 100);
  rect(450, 150, 100, 100);

  // row 2: green
  fill(0, 255, 0);
  rect(150, 300, 100, 100);
  rect(300, 300, 100, 100);
  rect(450, 300, 100, 100);

  // row 3: blue
  fill(0, 0, 255);
  rect(150, 450, 100, 100);
  rect(300, 450, 100, 100);
  rect(450, 450, 100, 100);
  
} // end draw