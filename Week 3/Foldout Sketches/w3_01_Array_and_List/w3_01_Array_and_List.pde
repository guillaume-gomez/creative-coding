/*
 * Creative Coding
 * Week 3, Foldout 01: Arrays and Lists
 * Updated 2016
 * by Indae Hwang and Jon McCormack
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
    
 * This program introduces the array and list collections
 * See the foldout associated with this sketch for more details
 * 
 */   
 
// array declaration
float[] grayValueForArray;
int columns;

// list declaration
FloatList grayValueForList;

float spacing;

void setup() {
  size(400, 300);

  columns = 5;  // number of columns of circles
  float brightnessStep = 255/float(columns);
  spacing = (width-100)/float(columns-1);  
  //Initialise Array 
  grayValueForArray = new float[columns];

  //Input values into the Array
  for (int i=0; i<columns; i++) {
    grayValueForArray[i] = brightnessStep*i;
  }

  //Initialise list
  grayValueForList = new FloatList();
  
  //Input values into the List
  for (int i=0; i<columns; i++) {
    grayValueForList.append(brightnessStep*i);
  }
}

void draw() {
  background(255);
  noStroke();
  
  //Use values from the array 
  for (int i=0; i<columns; i++) {
    fill( grayValueForArray[i] );
    ellipse(50+spacing*i, 100, 40, 40);
  }

  //Use values from the list 
  for (int i=0; i<columns; i++) {
    fill( grayValueForList.get(i) );
    ellipse(50+spacing*i, 200, 40, 40);
  }  
}