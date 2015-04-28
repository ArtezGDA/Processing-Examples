//float phi = 47.25;
//float phi = 99.5;
//float phi = 151.13;
float phi = 137.51; // 360 - 360/golden_ratio
int nDots = 1000; 
float dotsize = 8;
float expandsize = 0.6;

void setup() {
    size(400, 400);
    noLoop();
}

void draw() {
    for (int i = nDots; i > 0; i--) {
//    for (int i = 0; i < nDots; i++) {
        pushMatrix();
        translate(200, 200);
        rotate(phi * i);
        ellipse(0, i * expandsize, dotsize, dotsize);
        popMatrix();
    }
}
