/*
 * Creative Coding
 * Week 4, Foldout 02: Random, Noise and Gaussian
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
    
 * This program illustrates the use of different methods for generating randomness in Processing
 * See the foldout associated with this sketch for more details
 * 
 */   


void setup() {
  size(400, 700);
  frameRate(1);
}

void draw() {
  background(255);

  int barNo = width; //Number of noise sample bars
  float noiseOff = 0;
  
  // noise
  for (int i=0; i< barNo; i+=5) {
    float y = 150*noise(noiseOff);
    line(i, 150, i, y);
    fill(0);
    ellipse(i,y, 3, 3);
    noiseOff += 0.05;
  }

  // random
  for (int i=0; i< barNo; i+=5) {
    float y = random(100);
    line(i,350, i, 350-y);
    ellipse(i, 350-y,3,3);
  }

  // randomGaussian
  for (int i=0; i< barNo; i+=5) {
    float y = 50*randomGaussian();
    line(i, 540,i, y+540);
    ellipse(i, y+540, 3,3);
  }
  

}