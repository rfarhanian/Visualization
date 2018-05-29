public class Face {    
  
    private PImage img;
    
    void renderImage() {
        img = loadImage("bg.jpg");
        image(img, 500, 600);
        img.resize(800, 2000);
        image(img, 0, 0);
        
    }

    void draw() {
        doDraw(0);
    }

    public void doDraw(int offset) {
        surface.setTitle(mouseX + ", " + mouseY);
        fill(#99776E);
        beginShape();
        curveVertex(Math.abs(offset+ 358), 315);
        curveVertex(Math.abs(offset+ 374), 253);
        curveVertex(Math.abs(offset+ 387), 218);
        curveVertex(Math.abs(offset+ 413), 183);
        curveVertex(Math.abs(offset+ 473), 162);
        curveVertex(Math.abs(offset+ 530), 179);
        curveVertex(Math.abs(offset+ 571), 250);
        curveVertex(Math.abs(offset+ 578), 260);
// starting above shades area
        curveVertex(Math.abs(offset+ 560), 253);
        curveVertex(Math.abs(offset+ 548), 247);
        curveVertex(Math.abs(offset+ 543), 247);
        curveVertex(Math.abs(offset+ 536), 247);
        curveVertex(Math.abs(offset+ 518), 250);
        curveVertex(Math.abs(offset+ 472), 252);
        curveVertex(Math.abs(offset+ 433), 251);
        curveVertex(Math.abs(offset+ 433), 251);
        curveVertex(Math.abs(offset+ 419), 243);
        curveVertex(Math.abs(offset+ 419), 243);
        curveVertex(Math.abs(offset+ 401), 242);
        curveVertex(Math.abs(offset+ 401), 242);
        curveVertex(Math.abs(offset+ 390), 245);
        curveVertex(Math.abs(offset+ 385), 248);
        curveVertex(Math.abs(offset+ 385), 248);
        curveVertex(Math.abs(offset+ 376), 252);
        curveVertex(Math.abs(offset+ 370), 255);
        endShape();
        shades(offset);
        lips(offset);
        nose(offset);
        hair(offset);
// chin
//fill(#8F6A62);
//arc(455, 457, 123, 80, 0, PI, OPEN);

//left cheek
        noFill();
        noStroke();
        fill(#99776E, 50);
//fill(#8F6A62);
        beginShape();
        curveVertex(Math.abs(offset+ 359), 312);
        curveVertex(Math.abs(offset+ 358), 331);
        curveVertex(Math.abs(offset+ 358), 354);
        curveVertex(Math.abs(offset+ 360), 392);
        curveVertex(Math.abs(offset+ 373), 426);
        curveVertex(Math.abs(offset+ 393), 457);
//curveVertex(404, 468);
//right cheek continuation
        curveVertex(Math.abs(offset+ 419), 484);
        curveVertex(Math.abs(offset+ 456), 497);
        curveVertex(Math.abs(offset+ 498), 485);
        curveVertex(Math.abs(offset+ 509), 477);
        curveVertex(Math.abs(offset+ 517), 471);
        curveVertex(Math.abs(offset+ 540), 453);
        curveVertex(Math.abs(offset+ 565), 426);
        curveVertex(Math.abs(offset+ 572), 395);
        curveVertex(Math.abs(offset+ 578), 307);
        curveVertex(Math.abs(offset+ 563), 278);
//curveVertex(584, 329);
        curveVertex(Math.abs(offset+ 483), 253);
        curveVertex(Math.abs(offset+ 456), 253);
        curveVertex(Math.abs(offset+ 456), 253);
        endShape();

// face wrinkles
        noFill();
//noStroke();
//fill(#75484D,255);
//fill(0);
        stroke(#705053, 255);
        strokeWeight(0.5);
        beginShape();
        curveVertex(Math.abs(offset+ 418), 360);
        curveVertex(Math.abs(offset+ 418), 360);
        curveVertex(Math.abs(offset+ 412), 369);
        curveVertex(Math.abs(offset+ 405), 380);
        curveVertex(Math.abs(offset+ 404), 398);
        curveVertex(Math.abs(offset+ 404), 398);
        endShape();

        beginShape();
        curveVertex(Math.abs(offset+ 512), 361);
        curveVertex(Math.abs(offset+ 512), 361);
        curveVertex(Math.abs(offset+ 520), 375);
        curveVertex(Math.abs(offset+ 519), 387);
        curveVertex(Math.abs(offset+ 517), 395);
        curveVertex(Math.abs(offset+ 517), 395);
        endShape();

//ears
        fill(#99776E);
        stroke(#5A413D, 255);
        strokeWeight(2);
        beginShape();
        curveVertex(Math.abs(offset+ 577), 289);
        curveVertex(Math.abs(offset+ 577), 289);
        curveVertex(Math.abs(offset+ 592), 274);
        curveVertex(Math.abs(offset+ 601), 288);
        curveVertex(Math.abs(offset+ 604), 308);
        curveVertex(Math.abs(offset+ 602), 328);
        curveVertex(Math.abs(offset+ 585), 364);
        curveVertex(Math.abs(offset+ 578), 367);
        curveVertex(Math.abs(offset+ 578), 367);
        endShape();
//earlobe
        stroke(#5A413D, 255);
        strokeWeight(2);
        beginShape();
        curveVertex(Math.abs(offset+ 585), 302);
        curveVertex(Math.abs(offset+ 585), 302);
        curveVertex(Math.abs(offset+ 595), 312);
        curveVertex(Math.abs(offset+ 590), 334);
        curveVertex(Math.abs(offset+ 582), 345);
        curveVertex(Math.abs(offset+ 582), 345);
        endShape();

//earring
        fill(255);
        stroke(255, 255);
        strokeWeight(2);
        ellipse(Math.abs(offset+582), 360, 3, 5);
        ellipse(Math.abs(offset+582), 370, 3, 5);

        fill(#765754);
        stroke(#5A413D, 255);
        strokeWeight(2);
        beginShape();
        curveVertex(Math.abs(offset+ 409), 500);
        curveVertex(Math.abs(offset+ 409), 500);
        curveVertex(Math.abs(offset+ 402), 480);
        curveVertex(Math.abs(offset+ 393), 461);
        curveVertex(Math.abs(offset+ 406), 476);
        curveVertex(Math.abs(offset+ 426), 489);
        curveVertex(Math.abs(offset+ 444), 496);
        curveVertex(Math.abs(offset+ 458), 500);
        curveVertex(Math.abs(offset+ 484), 490);
        curveVertex(Math.abs(offset+ 509), 476);
        curveVertex(Math.abs(offset+ 539), 452);
        curveVertex(Math.abs(offset+ 563), 428);
        curveVertex(Math.abs(offset+ 548), 467);
        curveVertex(Math.abs(offset+ 531), 500);
        curveVertex(Math.abs(offset+ 531), 500);
        endShape();

    }
}
