#include "control.h"
#include <math.h>
#include "constant.h"

Position Control::computeRubber(const Position objective) {
    float x = objective.getX();
    float y = objective.getY();
    if (_board.getWidth() < objective.getX()) {
        x = _board.getWidth();
    } else if (0.0 > objective.getX()) {
        x = 0.0;
    }
    if (_board.getHeight() < objective.getY()) {
        y = _board.getHeight();
    } else if (0.0 > objective.getY()) {
        y = 0.0;
    }

    float squareL1 = pow((x - _board.getB() / 2.0), 2) + pow((y - _board.getA()), 2);
    float squareL2 = pow((_board.getWidth() - x - _board.getB() / 2.0), 2) +
                     pow((y - _board.getA()), 2);
    Position newPosition(x, y, sqrt(squareL1), sqrt(squareL2));
    Serial.print("L1 after compute : ");
    Serial.print(newPosition.getL1());
    Serial.print("\n L2 after compute : ");
    Serial.print(newPosition.getL2());
    Serial.print("\n");
    return newPosition;
}

void Control::simpleMove(Position objective) {
    objective = computeRubber(objective);
    float l1Origin = _actual.getL1();
    float l2Origin = _actual.getL2();
    float l1 = objective.getL1();
    float l2 = objective.getL2();
    float m1 = (l1 - l1Origin);
    float m2 = (l2 - l2Origin);
    Serial.print("m1 after compute : ");
    Serial.print(m1);
    Serial.print("\n m2 after compute : ");
    Serial.print(m2 * stepsPerRevolution / stepperResolution);
    Serial.print("\n");
    if (m1 > 0.0) {
        digitalWrite(dirPinLeft, HIGH);
        for (int i = 0; i < m1 * stepsPerRevolution / stepperResolution; i++) {
            // These four lines result in 1 step:
            digitalWrite(stepPinLeft, HIGH);
            delayMicroseconds(1000);
            digitalWrite(stepPinLeft, LOW);
            delayMicroseconds(1000);
        }
    } else if (m1 < 0.0) {
        digitalWrite(dirPinLeft, LOW);
        for (int i = m1 * stepsPerRevolution / stepperResolution; i < 0; i++) {
            // These four lines result in 1 step:
            digitalWrite(stepPinLeft, HIGH);
            delayMicroseconds(1000);
            digitalWrite(stepPinLeft, LOW);
            delayMicroseconds(1000);
        }
    }
    if (m2 > 0.0) {
        digitalWrite(dirPinRight, LOW);
        for (int i = 0; i < m2 * stepsPerRevolution / stepperResolution; i++) {
            // These four lines result in 1 step:
            digitalWrite(stepPinRight, HIGH);
            delayMicroseconds(1000);
            digitalWrite(stepPinRight, LOW);
            delayMicroseconds(1000);
        }
    } else if (m2 < 0.0) {
        digitalWrite(dirPinRight, HIGH);
        for (int i = m2 * stepsPerRevolution / stepperResolution; i < 0; i++) {
            // These four lines result in 1 step:
            digitalWrite(stepPinRight, HIGH);
            delayMicroseconds(1000);
            digitalWrite(stepPinRight, LOW);
            delayMicroseconds(1000);
        }
    }
    this->setActual(objective);
}

//void Control::complexMove(const std::vector<Position>& path) {
//    for (auto &it : path) {
//        simpleMove(it);
//    }
//}

Control::Control(const Board &board, const Position &actual, float maxStep) : _board(board),
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


