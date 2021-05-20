# Mécanique

Pour la mécanique du projet nous avons opté pour deux versions. Nous nous sommes rendus compte que la première possédait des défauts inhérent qui rendaient son utilisation impossible, nous avons donc changé complètement la méca à mi-projet pour une version moins esthétique mais fonctionelle.

## Première version : Centralisation

Jusqu'à la moitié du projet, nous avons cherché à centraliser toute l'électronique dans le coeur de la machine. Nous voulions que le shield, les steppers, et les mécanismes de lever de stylo ou de brosse se trouvent au même endroit, dans la partie movible. L'idée était de n'avoir qu'un câble d'alimentation apparent en mettant tous les composants électroniques au centre.

Nous avons donc commencé par modéliser notre plotter en 3D, sur Solidworks. 

![](modele_3d_v1.png)

Une fois le modèle réalisé, nous avons imprimé les pièces 3d complexes (la pièce serrant le stylo en place et les roues pour la courroie en caoutchouc) et découpé les autres pièces à la laser.

Entre temps, l'élec avait bien avancé et nous pouvions lancer nos premiers tests. Voici une vidéo d'un des tests réalisé sur la version 1 de notre plotter :

![](modele_3d_v1_test.mp4)

On se rend compte que le centre de gravité de la partie movible est bien trop en arrière ce qui fait pencher considérablement notre tête et empêche le stylo d'écrire.

On a beaucoup réfléchi aux solutions qui se présentaient à nous.

- Descendre les steppers n'allait pas résoudre notre problème, juste changer l'angle d'inclinaison. Mais pas suffisament pour que la pointe du stylo touche le tableau.

- Utiliser des câbles pouvoir les plaquer plus facilement contre le tableau comme le montre une des [vidéo](https://youtu.be/QYwWyuI_DsA?t=109) review de Scribit, un vertical plotter commercialisé. Nous avions des craites concernant la précision des déplacements avec l'utilisation des câbles. Un tour de stepper de correspond pas à la même longueur de câble tirée si on a un axe vide ou si le câble a déjà une trentaine de tours enroulés.

- Refaire totalement la méca et enlever les steppers du coeur de la machine. C'est la solution pour laquelle nous avons opté.

## Deuxième version : Steppers aux coins du tableau

Nous avons enlevé les steppers du coeur de la machine mais aussi le shield. Nous n'avons donc que les mécanismes de lever de stylo et de brosse qui restent au centre du plotter.

Voici le nouveau modèle 3d :

![](modele_3d_v2.avi)

Une fois les pièces imprimées et découpées, nous avons fait l'assemblage et avons bien observé que notre problème de centre de gravité n'apparassait plus.

Voici une liste des différents avantages et inconvénients de ce nouveau modèle :

!!! Avantages:
- Pas de bascule à cause d'un poids trop important
- Plus esthétique avec un coeur en forme du logo d'eirlab

!!! Inconvénients :
- Une partie de l'élec se trouve hors du coeur, il y a donc des câbles qui vont se balader.

Nous avons ensuite rajouté un petit boîtier pour intégrer la carte Arduino. 


Les différents fichiers permettant de reproduire la mécanique du projet sont disponible ici (utilisation d'une découpeuse laser et d'une imprimante 3D)
