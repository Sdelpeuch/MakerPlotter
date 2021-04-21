//
// Created by sedelpeuch on 17/04/2021.
//

#ifndef MAKERPLOTTER_POSITION_H
#define MAKERPLOTTER_POSITION_H


class Position {
private:
    float _x;
    float _y;
public:
    Position(float x, float y);
    float getX();
    float getY();
    ~Position() = default;
};


#endif //MAKERPLOTTER_POSITION_H
