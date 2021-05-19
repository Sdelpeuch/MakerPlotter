#ifndef MAKERPLOTTER_DRAWER_H
#define MAKERPLOTTER_DRAWER_H

#include "control.h"
#include "constant.h"
#include <Servo.h>

class Drawer {
private:
    Control _control;
    void pen(bool activated);
    void erase(bool activated);
public:
    Drawer(const Control &control);
    void draw(Position** path);
    ~Drawer() = default;
};

void aDraw(Drawer* drawer);


#endif //MAKERPLOTTER_DRAWER_H
