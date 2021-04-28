#include "drawer.h"

Servo penServo;
Servo eraserServo1;
Servo eraserServo2;

Drawer::Drawer(const Control &control) : _control(control) {
    penServo.attach(penPin);
    eraserServo1.attach(eraserPin1);
    eraserServo2.attach(eraserPin2);
}

void Drawer::pen(bool activated) {
    if (activated) {
        for (int position = 0; position <= 180; position++) {
            penServo.write(position);
            delay(5);
        }
    } else {
        for (int position = 180; position >= 0; position--) {
            penServo.write(position);
            delay(5);
        }
    }
}

void Drawer::draw() {
    pen(true);
    delay(50);
    erase(true);
    delay(50);
    pen(false);
    delay(50);
    erase(false);
}

void Drawer::erase(bool activated) {
    if (activated) {
        for (int position = 0; position <= 180; position++) {
            eraserServo1.write(position);
            eraserServo2.write(position);
            delay(5);
        }
    } else {
        for (int position = 180; position >= 0; position--) {
            eraserServo1.write(position);
            eraserServo2.write(position);
            delay(5);
        }
    }
}
