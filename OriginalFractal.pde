public void setup(){
  rectMode(CENTER);
  size(600, 600);
}

public void draw(){
  background(150, 50, 0);
  fractal(300, 300, 10, 0, 0.0, 0);
}

public void fractal(int x, int y, int s, float d, float r, int c){
  fill(150 + c, 50 + c, c);
  rect(x, y, s, s);
  if(s < 200){
    fractal(x + (int)(d*Math.cos(r)), y + (int)(d*Math.sin(r)), s + 1, d + 1, r + 0.5, c + 1);
  }
}
