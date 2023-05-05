int step = 10;
// float lastX = -999;
// float lastY = -999;
float xStep = 10;
float yStep = 10;
float lastX = 20;
float lastY = 20;

float y = 50;
int borderX = 20;
int borderY = 10;

for (int x = 20; x < 480; x+=xStep) {
    yStep = random(-10, 10);
    y+=yStep;
    line(x, y, lastX, lastY);
    lastX = x;
    lastY = y;
}

// for (int x=borderX; x<=width-borderX; x+=step) {
//     // y = borderY + random(height - 2*borderY);
//     yStep = random(-10, 10);
//     y+=yStep;
//     // if (lastX > -999) {
//         line(x, y, lastX, lastY);
//     // }
//     lastX = x;
//     lastY = y;
// }