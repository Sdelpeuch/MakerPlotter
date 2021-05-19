#include "position.h"
#include <math.h>

float Position::getX() const {
    return _x;
}

float Position::getY() const {
    return _y;
}

Position::Position(float x, float y) : _x(x), _y(y), _l1(-1.), _l2(-1.) {}

float Position::getL1() const {
    return _l1;
}

float Position::getL2() const {
    return _l2;
}

Position::Position(float x, float y, float l1, float l2) : _x(x), _y(y), _l1(l1), _l2(l2) {}

float Position::distance(Position p1, Position p2) {
    return sqrt(pow(p1._x+p2._x,2)+pow(p1._y+p2._y,2));
}

Position::Position() {

}

