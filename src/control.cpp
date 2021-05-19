#include "control.h"
#include <math.h>
#include "constant.h"

Position Control::computeRubber(const Position objective) {
    float x = objective.getX();
    float y = objective.getY();
    if (_board.getWidth() - 0.1 < objective.getX()) {
        x = _board.getWidth();
    } else if (0.1 > objective.getX()) {
        x = 0.0;
    }
    if (_board.getHeight() - 0.1 < objective.getY()) {
        y = _board.getHeight();
    } else if (0.1 > objective.getY()) {
        y = 0.0;
    }

    float squareL1 = pow((x - _board.getB() / 2.0), 2) + pow((y - _board.getA()), 2);
    float squareL2 = pow((_board.getWidth() - x - _board.getB() / 2.0), 2) +
                     pow((y - _board.getA()), 2);
    Position newPosition(x, y, sqrt(squareL1), sqrt(squareL2));
    return newPosition;
}


void Control::simpleMove(Position objective) {
    objective = computeRubber(objective);
    float l1Origin = _actual.getL1();
    float l2Origin = _actual.getL2();
    float l1 = objective.getL1();
    float l2 = objective.getL2();
    float m1 = (l1 - l1Origin) * stepsPerRevolution / stepperResolution;
    float m2 = (l2 - l2Origin) * stepsPerRevolution / stepperResolution;

    if (m1 > 0.0) {
        digitalWrite(dirPinLeft, HIGH);
    } else if (m1 < 0.0) {
        digitalWrite(dirPinLeft, LOW);
        m1 = -m1;
    }
    if (m2 > 0.0) {
        digitalWrite(dirPinRight, LOW);
    } else if (m2 < 0.0) {
        digitalWrite(dirPinRight, HIGH);
        m2 = -m2;
    }

    int i = 0, j = 0;
    while (i < m1 && j < m2) {
        digitalWrite(stepPinLeft, HIGH);
        digitalWrite(stepPinRight, HIGH);
        delayMicroseconds(3000);
        digitalWrite(stepPinLeft, LOW);
        digitalWrite(stepPinRight, LOW);
        delayMicroseconds(3000);
        i++;
        j++;
    }
    if (i < m1) {
        while (i < m1) {
            // These four lines result in 1 step:
            digitalWrite(stepPinLeft, HIGH);
            delayMicroseconds(3000);
            digitalWrite(stepPinLeft, LOW);
            delayMicroseconds(3000);
            i++;
        }
    }
    if (j < m2) {
        while (j < m2) {
            // These four lines result in 1 step:
            digitalWrite(stepPinRight, HIGH);
            delayMicroseconds(3000);
            digitalWrite(stepPinRight, LOW);
            delayMicroseconds(3000);
            j++;
        }
    }
    this->setActual(objective);
}

void Control::complexMove(const Position* path) {
    int i = 0;
    while (path[i].getX() != -1.0 and path[i].getY() != -1.0) {
//        if(Position::distance(_actual,path[i])>_maxStep){
//            int times = static_cast<int>((path[i].getX() - this->_actual.getX()) / this->_maxStep);
//            for (int i = 0; i < times ; ++i) {
//                float x = _actual.getX() + i * _maxStep;
//                float y = interpolate(x, _actual, path[i]);
//                Serial.print(x);
//                Serial.print("\n");
//                Serial.print(y);
//                Serial.print("\n");
//                Serial.print("Deuxième \n");
//                Serial.print(_actual.getX());
//                Serial.print("\n");
//                Serial.print(_actual.getY());
//                Serial.print("\n");
//                simpleMove({x,y});
//                if(x==path[i].getX() and y==path[i].getX()){
//                    break;
//                }
//            }
//        }
//        else {
            this->simpleMove(path[i]);
//        }
        i++;
    }
}

Control::Control(
        const Board &board,
        const Position &actual,
        float maxStep) : _board(board),
                         _actual(computeRubber(actual)),
                         _maxStep(maxStep) {
    pinMode(stepPinLeft, OUTPUT);
    pinMode(dirPinLeft, OUTPUT);
    pinMode(stepPinRight, OUTPUT);
    pinMode(dirPinRight, OUTPUT);
}

void Control::setActual(const Position &actual) {
    _actual = actual;
}

const Position &Control::getActual() const {
    return _actual;
}

float Control::interpolate(float x, Position a, Position b) {

    if (a.getX() == b.getX()) {
        Serial.print("HERE");
        return b.getY();
    }
    float f = (a.getY() - b.getY()) / (a.getX() - b.getX())
              * x
              + ((a.getX() * b.getY()) - (b.getX() * a.getY())) / (a.getX() - b.getX());
    return f;
}



