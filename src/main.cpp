

/*Example sketch to control a stepper motor with A4988 stepper motor driver and Arduino without a library. More info: https://www.makerguides.com */
#include <Servo.h>
#include "drawer.h"

void led_switch(int state){
  if (state==1) {
    digitalWrite(led,HIGH);
  }
  if (state==0) {
    digitalWrite(led,LOW);
  }
  else{
    digitalWrite(led,HIGH);
    delay(200);
    digitalWrite(led,LOW);
  }
}

void stepper(){
  // Set the spinning direction clockwise:
  digitalWrite(dirPinLeft, HIGH);
  // Spin the stepper motor 1 revolution slowly:
  for (int i = 0; i < stepsPerRevolution; i++) {
    // These four lines result in 1 step:
    digitalWrite(stepPinLeft, HIGH);
    delayMicroseconds(2000);
    digitalWrite(stepPinLeft, LOW);
    delayMicroseconds(2000);
  }
  // Set the spinning direction counterclockwise:
  digitalWrite(dirPinLeft, LOW);
  // Spin the stepper motor 1 revolution quickly:
  for (int i = 0; i < stepsPerRevolution; i++) {
    // These four lines result in 1 step:
    digitalWrite(stepPinLeft, HIGH);
    delayMicroseconds(1000);
    digitalWrite(stepPinLeft, LOW);
    delayMicroseconds(1000);
  }

  delay(1000);

  // Set the spinning direction clockwise:
  digitalWrite(dirPinLeft, HIGH);

  // Spin the stepper motor 5 revolutions fast:
  for (int i = 0; i < 5 * stepsPerRevolution; i++) {
    // These four lines result in 1 step:
    digitalWrite(stepPinLeft, HIGH);
    delayMicroseconds(500);
    digitalWrite(stepPinLeft, LOW);
    delayMicroseconds(500);
  }

  delay(1000);

  // Set the spinning direction counterclockwise:
  digitalWrite(dirPinLeft, LOW);

  //Spin the stepper motor 5 revolutions fast:
  for (int i = 0; i < 5 * stepsPerRevolution; i++) {
    // These four lines result in 1 step:
    digitalWrite(stepPinLeft, HIGH);
    delayMicroseconds(500);
    digitalWrite(stepPinLeft, LOW);
    delayMicroseconds(500);
  }

  delay(1000);
}

Drawer* drawer;
Control* control;

void setup() {
  // Declare pins as output:
  pinMode(stepPinLeft, OUTPUT);
  pinMode(dirPinLeft, OUTPUT);
    pinMode(stepPinRight, OUTPUT);
    pinMode(dirPinRight, OUTPUT);
  pinMode(led,OUTPUT);
  led_switch(2);
  Serial.begin(9600);
  Board board = generateBoard(Little);
    Serial.print(board.getInitial().getX());
    Serial.print(" \n");
  control = new Control(board, board.getInitial(), 0.02);
  drawer = new Drawer(*control);
}

void loop() {
    led_switch(1);
    drawer->draw();
    Position objective(0.15,0.4305);
    control->simpleMove(objective);
    led_switch(0);
}
