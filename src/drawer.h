#ifndef MAKERPLOTTER_DRAWER_H
#define MAKERPLOTTER_DRAWER_H

#include "control.h"
#include "constant.h"
#include <Servo.h>

/**
 * La classe __drawer__  est la classe qui permet de transformer un dessin en une succession de chemin tout en prenant en compte les moments où il faut relever et baisser le stylo. Elle permet aussi de définir comment effacer le tableau à la fin du dessin.
 */
class Drawer {
private:
    Control _control;
    /**
     * Permet de monter ou baisser le stylo
     * @param activated 1 activé, 0 désactivé
     */
    void pen(bool activated);
public:
    Drawer(const Control &control);
    /**
     * Permet de dessiner une succession de chemin tout en prennant en compte les zones où il doit se relever etc
     * @param path Un tableau de path
     */
    void draw(Position** path);
    ~Drawer() = default;
};

/**
 * Fonction contenant le dessin créé par l'utilisateur en utilisant le site (voir le tuto sur le site eirlab)
 * @param drawer Le contrôleur du module
 */
void aDraw(Drawer* drawer);


#endif //MAKERPLOTTER_DRAWER_H
