#ifndef MAKERPLOTTER_CONTROL_H
#define MAKERPLOTTER_CONTROL_H

#include "board.h"
#include "position.h"

class Control {
private:
    Board _board;
    Position _actual;
    const float _maxStep;
    Position computeRubber(Position objective);

public:
    Control(const Board &board, const Position &actual, float maxStep);
    void complexMove(const Position* path);
    void setActual(const Position &actual);
    const Position &getActual() const;
    ~Control() = default;
    void simpleMove(Position objective);
};


#endif //MAKERPLOTTER_CONTROL_H
