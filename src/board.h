#ifndef MAKERPLOTTER_BOARD_H
#define MAKERPLOTTER_BOARD_H

#include <Arduino.h>
#include <stdlib.h>
#include "position.h"
/**
 * Enumeration containing the identifiers of the different tables of eirlabi
 */
typedef enum Name {
    Red=0, White=1, Little=2
}Name;

/**
 *
 */
class Board {
private:
    Name _name;
    float _width;
    float _height;
    float _a;
    float _b;
    Position _initial;
public:
    Board(Name name, float width, float height, float a, float b, const Position &initial);
    Name getName();
    void computeDeltaRubber(float x, float y);
    Position getInitial();
    ~Board() = default;
};

Board generateBoard(Name name);

#endif //MAKERPLOTTER_BOARD_H
