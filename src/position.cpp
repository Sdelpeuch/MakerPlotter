//
// Created by sedelpeuch on 17/04/2021.
//

#include "position.h"

float Position::getX() {
    return _x;
}

float Position::getY() {
    return _y;
}

Position::Position(float x, float y) : _x(x), _y(y) {}

