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

void Board::computeDeltaRubber(float x, float y) {

}

Position Board::getInitial() {
    return _initial;
}

Board generateBoard(Name name){
    if( name == Little){
        Position initial(0,0);
        Board board (name,0.559,0.861,0,0,initial);
        return board;
    }
    else{
        Serial.print("You don't choose an existing board");
    }
}