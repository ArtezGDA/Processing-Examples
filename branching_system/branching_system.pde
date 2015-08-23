
int steps = 1;

void setup() {
    size(400, 400);
    noLoop();
}

void draw() {
    background(200);
    drawBranch(200, 300, 100, PI / 2, steps);
}

float d1 = 0.7;
float d2 = 0.6;
float a1 = PI / 8;
float a2 = PI / 6;

void drawBranch(float x, float y, float length, float angle, int repeat_n) {
    float x1 = x + (cos(angle) * length);
    float y1 = y - (sin(angle) * length);
    line(x, y, x1, y1);
    // Create sub-branches (aftakkingen)
    if (repeat_n > 1) {
      drawBranch( x1, y1, length * d1, angle + a1, repeat_n - 1);
      drawBranch( x1, y1, length * d2, angle - a2, repeat_n - 1);
    }
}

void update_drawing() {
    println("iterate " + steps + " times");
    redraw();
}

void keyPressed() {
    if (keyCode == RIGHT) {
        steps += 1;
        update_drawing();
    }
    if (keyCode == LEFT) {
        steps -= 1;
        if (steps < 1) {
            steps = 1;
        }
        update_drawing();
    }
}

