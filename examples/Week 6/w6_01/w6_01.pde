/*
 * Creative Coding
 * Week 6, 01 - Recursive funtions
 * by Jon McCormack
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
    
 * This sketch demonstrates a recursive function to draw circles within circles.
 *
 */

float ratio = 3;  // size ratio of circles
int division = 6; // number of circles inside each circle

void setup() {
  size(800, 800);
  noStroke();
}

void draw() {
  translate(width/2, height/2); // move to the middle of the screen
  drawCircle(height/2, 5); // draw the recursive circle
}

/*
 * drawCircle
 * recursive function that draws a circle
 * then draws 'division' circles inside that circle
 *
 */
void drawCircle(float radius, int level) {                    
  float tt = 126 * level/4.0;
  fill(tt);

  // draw the circle
  ellipse(0, 0, radius*2, radius*2);      
  if (level > 1) {
    level = level - 1;

    // draw the inner circles
    for (int i = 0; i < division; ++i) {  
      pushMatrix();
      float mult = (level % 2 == 1) ? -1 : 1;
      rotate(mult * frameCount / (20.0 * level) + TWO_PI/division * i);
      translate(radius - radius/ratio, 0);
      drawCircle(radius/ratio, level);
      popMatrix();
    }
  }
}