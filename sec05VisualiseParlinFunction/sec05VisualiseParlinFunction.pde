void setup() {
    size(300, 300);
    smooth();
    background(255);
    float xStart = random(10);
    float xNoise = xStart;
    float yNoise = random(10);

    for (int y = 0; y <= height; y+=5) {
        yNoise += 0.1;
        xNoise = xStart;
        for (int x = 0; x <= width; x+=5) {
            xNoise += 0.1;
            drawPoint(x, y, noise(xNoise, yNoise));
        }
    }
}

// void drawPoint(float x, float y, float noiseFactor) {
//     float len = 10 * noiseFactor;
//     rect(x, y, len, len);
// }

void drawPoint(float x, float y, float noiseFactor) {
    pushMatrix();
    translate(x, y);
    rotate(noiseFactor * radians(360));
    stroke(0, 150);
    line(0, 0, 20, 0);
    popMatrix();
}