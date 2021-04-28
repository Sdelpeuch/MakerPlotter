//
// Created by sedelpeuch on 17/04/2021.
//

#include "board.h"

Board::Board(Name name, float width, float height, float a, float b, const Position &initial) : _name(name),
                                                                                                _width(width),
                                                                                                _height(height), _a(a),
                                                                                                _b(b),
                                                                                                _initial(initial) {}

enum Name Board::getName() {
    return _name;
}

float Board::getWidth() const {
    return _width;
}

float Board::getHeight() const {
    return _height;
}

const Position &Board::getInitial() const {
    return _initial;
}

float Board::getA() const {
    return _a;
}

float Board::getB() const {
    return _b;
}

Board generateBoard(Name name) {
    if (name == Little) {
        Position initial(0.2795, 0.430);
        Board board(name, 0.559, 0.861, -0.065, 0.165, initial);
        return board;
    } else {
        Serial.print("You don't choose an existing board");
    }
}