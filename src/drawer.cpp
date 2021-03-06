#include "drawer.h"

Servo penServo;
Servo eraserServo;

Drawer::Drawer(const Control &control) : _control(control) {
    penServo.attach(penPin);
    eraserServo.attach(eraserPin);
}

void Drawer::pen(bool activated) {
    if (activated) {
        penServo.write(70); //empiric
        delay(2000);
    } else {
        penServo.write(35); //empiric
        delay(2000);
    }
}

void Drawer::draw(Position** path) {
    int i = 0;
    while(path[i]!=nullptr){
        pen(false);
        _control.simpleMove(path[i][0]);
        pen(true);
        _control.complexMove(path[i]);
        i++;
    }
    pen(false);
    _control.simpleMove({0.279,0.43});
}
