size(500, 300);
background(255);
strokeWeight(5);
smooth();

float radius = 100;
int centX = 250;
int centY = 150;

stroke(0, 30);
noFill();
ellipse(centX, centY, radius*2, radius*2);

stroke(20, 50, 70);
radius = 10;
float x, y;
float lastX = -999;
float lastY = -999;
float radiusNoise = random(10);
for ( float ang = 0; ang <= 1440; ang += 5) {
    radiusNoise +=  0.5;
    radius += 0.5;
    float thisRadius = radius + (noise(radiusNoise) * 20) - 10;
    float rad = radians(ang);
    x = centX + (thisRadius * cos(rad));
    y = centY + (thisRadius * sin(rad));
    point(x, y);
}