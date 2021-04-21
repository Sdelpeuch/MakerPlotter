//
// Created by sedelpeuch on 17/04/2021.
//

#include "control.h"

void Control::simpleMove(Position objective) {
    return;
}

void Control::complexMode(const Vector<Position>* path) {
    return;
}

Control::Control(const Board &board, const Position &actual, float maxStep) : _board(board), _actual(actual),
                                                                              _maxStep(maxStep) {}

void Control::setActual(const Position &actual) {
    _actual = actual;
}
