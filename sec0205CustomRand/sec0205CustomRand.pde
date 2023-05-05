void setup() {
    size(500, 100);
    background(255);
    strokeWeight(5);
    smooth();

    stroke(20, 50, 70);
    int xStep = 10;
    float lastX = -999;
    float lastY = -999;
    float angle = 0;
    float y = 50;
    for (int x = 20; x < 480; x+=xStep) {
        float rad = radians(angle);
        // y = 50 + (sin(rad) * 40);
        y = 20 + (customRandom() * 60);
        if (lastX > -999) {
            line(x, y, lastX, lastY);
        }
        lastX = x;
        lastY = y;
        angle++;
    }
}

float customRandom() {
    float retValue = 1 - pow(random(1), 5);
    return retValue;
}