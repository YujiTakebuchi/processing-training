size(500, 100);
background(255);
strokeWeight(5);
smooth();

stroke(0, 30);
line(20, 50, 480, 50);

stroke(20, 50, 70);
float randX = random(width);
float randY = random(height);
line(20, 50, randX, randY);
