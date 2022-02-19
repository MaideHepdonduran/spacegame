class Drop {
  float x = random(160, width);
  float y = random(-300, -20);
  float yspeed = random(1, 2);
  
  void fall() {
    y = y + yspeed;


    if (y>height) {
      y = random(-100, -20);
    }
  }
  void show() {
    fill(255);
    ellipse(x, y, 10, 10);
  }
  
  boolean carpisma(int xx, int yy, int w, int h){
    boolean sonuc = false;
    sonuc = in_rect(int(x),int(y),xx,yy,w,h);
    return sonuc;
  }
  
  boolean in_rect(int x, int y, int rx, int ry, int rw, int rh ) {
    boolean retval =false;
    if (x>rx && x < rx+rw && y>ry && y< ry + rh) {
      retval = true;
    }
    return retval;
  }

  boolean in_rect(int x, int y, int[]r ) {
    int x_offset =0;
    int y_offset = 0;
    int rx = r[0];
    int ry=r[1]; 
    int rw=r[2]; 
    int rh=r[3];
    rx = rx-x_offset;
    ry = ry - y_offset;

    boolean retval = in_rect(x, y, rx, ry, rw, rh);
    return retval;
  };
}
