#ifndef MAKERPLOTTER_POSITION_H
#define MAKERPLOTTER_POSITION_H

class Position {
private:
    float _x;
    float _y;
    float _l1;
    float _l2;
public:
    Position(float x, float y);
    Position(float x, float y, float l1, float l2);
    float getX() const;
    float getY() const;
    float getL1() const;
    float getL2() const;
    ~Position() = default;
    static float distance(Position p1, Position p2);
    Position();
};


#endif //MAKERPLOTTER_POSITION_H
