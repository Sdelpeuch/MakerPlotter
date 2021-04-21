//
// Created by sedelpeuch on 17/04/2021.
//

#ifndef MAKERPLOTTER_CONTROL_H
#define MAKERPLOTTER_CONTROL_H

#include "board.h"
#include "position.h"
#include <Vector.h>

class Control {
private:
    Board _board;
    Position _actual;
    float _maxStep;
    void simpleMove(Position objective);

public:
    Control(const Board &board, const Position &actual, float maxStep);
    void complexMode(const Vector<Position>* path);
    void setActual(const Position &actual);
    ~Control() = default;
};


#endif //MAKERPLOTTER_CONTROL_H
