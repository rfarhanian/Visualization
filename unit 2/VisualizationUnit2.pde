  private BelleFille belleFille = new BelleFille();
  private Face nithiya = new Face();
  private int offset = 1;  
  
    void settings() {
        size(800, 500);
    }

    void setup() {
      nithiya.renderImage();
      belleFille.renderImage();
    }
    
    public void draw() {
        nithiya.doDraw(-1*offset);
        belleFille.doDraw(offset);
    }
    
    void mouseClicked() {
        if (offset == 1) {
            offset = 290;
        } else {
            offset = 1;
        }
        
        System.out.println(offset);
        nithiya.renderImage();
        draw();
    }
    
