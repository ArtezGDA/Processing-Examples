
void setup() {
    noLoop();
    size(400, 300);
}

void draw() {
    drawSplit(0, 0, width, height, true);
}

void drawSplit(int x, int y, int w, int h, boolean horizontal) {
    int x2, y2;
    boolean shouldSplitAgain = false;
    if (horizontal) {
        h = h / 2;
        y = y + h;
        x2 = x + w;
        y2 = y;
        if (h > 2) {
            shouldSplitAgain = true;
        }
    } else {
        w = w / 2;
        x = x + w;
        x2 = x;
        y2 = y + h;
        if (w > 2) {
            shouldSplitAgain = true;
        }
    }
   line(x, y, x2, y2);
   if (shouldSplitAgain) {
      drawSplit(x, y, w, h, !horizontal); 
   }
}
