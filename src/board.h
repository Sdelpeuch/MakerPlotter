#ifndef MAKERPLOTTER_BOARD_H
#define MAKERPLOTTER_BOARD_H

#include <Arduino.h>
#include <stdlib.h>
#include "position.h"

/**
 * Enumeration containing the identifiers of the different tables of eirlab
 */
typedef enum Name {
    Red = 0, White = 1, Little = 2
} Name;

/**
 *
 */
class Board {
private:
    const Name _name;
    const float _width;
    const float _height;
    const float _a;
    const float _b;
    const Position _initial;
public:
    Board(Name name,
          float width, float height, float a, float b, const Position &initial);
    Name getName();
    float getA() const;
    float getB() const;
    const Position &getInitial() const;
    float getWidth() const;
    float getHeight() const;
    ~Board() = default;
};

Board generateBoard(Name name);

#endif //MAKERPLOTTER_BOARD_H
