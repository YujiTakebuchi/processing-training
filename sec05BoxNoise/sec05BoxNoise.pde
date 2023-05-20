float xStart, xNoise, yStart, yNoise, zStart, zNoise;

int sideLength = 200;
int spacing = 5;

void setup() {
    size(500, 300, P3D);
    background(0);
    noStroke();
    
    xStart = random(10);
    yStart = random(10);
    zStart = random(10);
}

void draw() {
    background(0);

    xStart += 0.01;
    yStart += 0.01;
    zStart += 0.01;

    xNoise = xStart;
    yNoise = yStart;
    zNoise = zStart;

    translate(150, 20, -150);
    rotateZ(frameCount * 0.1);
    rotateY(frameCount * 0.1);

    for (int z = 0; z <= height; z+=spacing) {
        zNoise += 0.1;
        yNoise = yStart;
        for (int y = 0; y <= height; y+=spacing) {
            yNoise += 0.1;
            xNoise = xStart;
            for (int x = 0; x <= width; x+=spacing) {
                xNoise += 0.1;
                drawPoint(x, y, z, noise(xNoise, yNoise, zNoise));
            }
        }
    }
}

// ブロックの集合のような描画
// void drawPoint(float x, float y, float noiseFactor) {
//     float len = 10 * noiseFactor;
//     rect(x, y, len, len);
// }

// すね毛の集合のような描画
// void drawPoint(float x, float y, float noiseFactor) {
//     pushMatrix();
//     translate(x, y);
//     rotate(noiseFactor * radians(360));
//     stroke(0, 150);
//     line(0, 0, 20, 0);
//     popMatrix();
// }

// ふんわりした雪の集合のような描画
void drawPoint(float x, float y, float z, float noiseFactor) {
    pushMatrix();
    translate(x, y, z);
    float grey = noiseFactor * 255;
    fill(grey, 10);
    box(spacing, spacing, spacing);
    popMatrix();
}