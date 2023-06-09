size(500, 300);
background(255);
strokeWeight(0.5);
smooth();

int centX = 250;
int centY = 150;

float x, y;
for(int i = 0; i < 100; i++) {
    float lastX = -999;
    float lastY = -999;
    float radiusNoise = random(10);
    float radius = 10;
    stroke(random(20), random(50), random(70), 80);

    int startAngle = int(random(360));
    int endAngle = 1440 + int(random(1440));
    int angleStep = 5 + int(random(3));
    for ( float ang = startAngle; ang <= endAngle; ang += angleStep) {
        radiusNoise +=  0.05;
        radius += 0.5;
        float thisRadius = radius + (noise(radiusNoise) * 200) - 100;
        float rad = radians(ang);
        x = centX + (thisRadius * cos(rad));
        y = centY + (thisRadius * sin(rad));
        if (lastX > -999) {
            line(x,  y, lastX, lastY);
        }
        lastX = x;
        lastY = y;
    }
}