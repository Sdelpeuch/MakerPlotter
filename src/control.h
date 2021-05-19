#ifndef MAKERPLOTTER_CONTROL_H
#define MAKERPLOTTER_CONTROL_H

#include "board.h"
#include "position.h"

/**
 * Met en oeuvre le contrôle du module c'est à dire la réalisation d'un déplacement en suivant une succession de points
 */
class Control {
private:
    Board _board;
    Position _actual;
    const float _maxStep;
    /**
     * Permet de calculer la taille des rubber en fonction de la position
     * @param objective une Position
     * @return un Position avec les champs _l1 et _l2 correctes
     */
    Position computeRubber(Position objective);

public:
    Control(const Board &board, const Position &actual, float maxStep);
    /**
     * Utilise la fonction simpleMove pour convertir une sucession de position en ordre pour le moteur
     * @param path un tableau de position
     */
    void complexMove(const Position* path);
    /**
     * Met à jour la position actuelle
     * @param actual la position actuelle
     */
    void setActual(const Position &actual);
    const Position &getActual() const;
    ~Control() = default;
    /**
     * Permet de calculer les ordres à envoyer au moteur pour se déplacer de la position actuelle à une position
     * @param objective La position objectif
     */
    void simpleMove(Position objective);
};


#endif //MAKERPLOTTER_CONTROL_H
