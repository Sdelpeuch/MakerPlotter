import sys
import csv
import numpy as np
import matplotlib.pyplot as plt

# Website to export svg to coordinates
# https://shinao.github.io/PathToPoints/

# Reads the coordinates of the drawing in `filename` file

filename = "drawing.txt"
paths = []
with open(filename) as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    p = 0
    path = []
    for row in csv_reader:
        if row[0] == "#":
            p += 1
            paths.append(path)
            path = []
        else:
            # print(f'\t[{p}] : {row[0]}, {row[1]}')
            dot = [float(row[0]), float(row[1])]
            path.append(dot)
        line_count += 1
    print(f'Processed {line_count} coordinates.')



paths = np.array(paths)
MAX = 1000 # used for min / max searches


# Moves all cordinates to put the bottom left corner to 0, 0
def set_to_zero(paths):
    minX = MAX
    minY = MAX
    for path in paths:
        for dot in path:
            if dot[0] < minX: minX = dot[0]
            if dot[1] < minY: minY = dot[1]    
    
    for path in paths:
        for dot in path:
           dot[0] = dot[0] - minX
           dot[1] = dot[1] - minY
    return paths


# Resize the draw
def normalize(paths, width=100, height=100):
    maxX = -MAX
    maxY = -MAX
    for path in paths:
        for dot in path:
            if dot[0] > maxX: maxX = dot[0]
            if dot[1] > maxY: maxY = dot[1]    
    
    for path in paths:
        for dot in path:
           dot[0] = dot[0] / maxX * width
           dot[1] = dot[1] / maxY * height
    return paths


# Moves the draw to a cordinate
# center : the position given is the center of the drawing
# bottom : the position given is the bottom left corner of the drawing
def offset(paths, x, y, mode):
    if mode == "center":
        # print("center!")
        for path in paths:
            for dot in path:
               dot[0] = round(dot[0] + x - SIDE/2, 3)
               dot[1] = round(dot[1] + y - SIDE/2, 3)
        return paths
    elif mode == "bottom":
        # print("bottom!")
        for path in paths:
            for dot in path:
               dot[0] += x
               dot[1] += y
        return paths
    else:
        raise ValueError

# 
def float_to_int(paths, precison):
    mult = pow(10, precison)
    for path in paths:
        for dot in path:
            dot[0] = int(dot[0] * mult)
            dot[1] = int(dot[1] * mult)
    return paths            


SIDE = 0.2 # width & height (in m) 
paths = set_to_zero(paths)
paths = normalize(paths, SIDE, SIDE)
paths = offset(paths, 0.279, 0.43, "center")


# Plotting the transformation
colors = ['b', 'r', 'g', 'orange', 'violet', 'magenta', 'grey', 'black']
fig, ax = plt.subplots()
ax.set_aspect('equal', 'box')
for p, path in enumerate(paths):
    X = []
    Y = []
    for dot in path:
        X.append(dot[0])
        Y.append(dot[1])
    plt.plot(X, Y, 'o-', color=colors[p])
plt.show()


# exports the path to a .cpp file
def export_as_cpp(paths):   
    original_stdout = sys.stdout # Save a reference to the original standard output

    with open('aDraw.cpp', 'w') as f:
        sys.stdout = f # Change the standard output to the file we created.
        MAX_STEP = 2
        prints = 0
        len_paths = len(paths)
        step = []
        print('#include "drawer.h"\n\n')
        print("/*\n * File generated with Python script!")
        print(" * Makers 2021 - Delpeuch Sébastien & Pringalle Antoine")
        print(" */\n\n")
        print('void aDraw(Drawer* drawer) {')
        for p, path in enumerate(paths):
            string = "\nPosition* deer" + str(p) + " = new Position[" + str(len(path)+1) + "];"
            print(string)
            for d, dot in enumerate(path):
                print('deer' + str(p) + '[' + str(d) + '] = {' + str(dot[0]) + ', ' + str(dot[1]) + '};')
            print('deer' + str(p) + '[' + str(d) + '] = { -1.0, -1.0};')
            step.append(p)
            if len(step) >= MAX_STEP or p >= len_paths-1:
                string =  "\nPosition* deer_part" + str(prints) + "[] = {"
                for e in step:
                    string += 'deer' + str(e) + ', '
                string +=  "nullptr};"
                print(string)
                print("drawer->draw(deer_part" + str(prints) + ");")
                for e in step:
                    print("delete[] deer" + str(e) + ";")
                step = []
                prints += 1
        print('}')
        sys.stdout = original_stdout # Reset the standard output to its original value
    print('File edited / created')

if __name__ == "__main__":
    export_as_cpp(paths)