
int steps = 1;

void setup() {
    size(400, 400);
    noLoop();
}

void draw() {
    drawBranch(200, 300, 100, 0, steps);
}

void drawBranch(float x, float y, float length, float angle, int repeat_n) {
    float x1 = x + (cos(angle) * length);
    float y1 = y + (sin(angle) * length);
    line(x, y, x1, y1);
}

void update_drawing() {
    println("iterate " + steps + " times");
    redraw();
}

void keyPressed() {
    if (keyCode == RIGHT) {
        steps += 1;
        update_drawing();
        redraw();
    }
    if (keyCode == LEFT) {
        steps -= 1;
        if (steps < 1) {
            steps = 1;
        }
        update_drawing();
        redraw();
    }
}
