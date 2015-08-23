int t;

void setup() {
  size(300, 300);
  noiseSeed(0);
  stroke(0);
  t = 0;
}

void draw() {
  background(200);  
  for(int x = 0; x < width; x = x + 1) {
    
    //int x4noise = x + t;
    float h = noise(x * 0.02, t * 0.02) * height;
    
    int int_h = int(h);
    line(x, height, x, int_h);
  }
  t = t + 1;
}
