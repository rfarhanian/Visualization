    void shades(int offset){
        vertex(Math.abs(offset+356),259);
        strokeWeight(1);
        stroke(#C4C3BE);
        line(Math.abs(offset+ 356),250,Math.abs(offset+ 581),251);
        fill(#337690,255);//opaque
        beginShape();
        vertex(Math.abs(offset+ 356), 252);
        stroke(#C4C3BE);
        bezierVertex(Math.abs(offset+ 340),287, Math.abs(offset+ 356), 444,Math.abs(offset+ 456), 253);
        endShape();
        noFill();
        stroke(#C4C3BE);
        arc(Math.abs(offset+ 467), 273, 45, 20,  PI,PI+PI);

//arc(50, 55, 70, 70, PI, PI+QUARTER_PI);
//arc(50, 55, 60, 60, HALF_PI, PI);

        beginShape();
        fill(#337690,255);
        vertex(Math.abs(offset+ 482),253);
        bezierVertex(Math.abs(offset+ 482),253, Math.abs(offset+ 545), 490, Math.abs(offset+ 580), 253);
        endShape();

//left brow
        fill(0,255);
        noStroke();
        beginShape();
        curveVertex(Math.abs(offset+ 384), 248);
        curveVertex(Math.abs(offset+ 384), 248);
        curveVertex(Math.abs(offset+ 394), 245);
        curveVertex(Math.abs(offset+ 404),241 );
        curveVertex(Math.abs(offset+ 414), 242);
        curveVertex(Math.abs(offset+ 421), 245);
        curveVertex(Math.abs(offset+ 384), 248);
        curveVertex(Math.abs(offset+ 430), 250);
        curveVertex(Math.abs(offset+ 423), 246);
        curveVertex(Math.abs(offset+ 406), 246);
        curveVertex(Math.abs(offset+ 416), 248);
        curveVertex(Math.abs(offset+ 398), 246);
        curveVertex(Math.abs(offset+ 430), 250);
        endShape();
//right brow
        fill(0,255);
        noStroke();
        beginShape();
        curveVertex(Math.abs(offset+ 513), 250);
        curveVertex(Math.abs(offset+ 513), 250);
        curveVertex(Math.abs(offset+ 518), 244);
        curveVertex(Math.abs(offset+ 533), 241);
        curveVertex(Math.abs(offset+ 536), 243);
        curveVertex(Math.abs(offset+ 545),244);
        curveVertex(Math.abs(offset+ 553), 249);
        curveVertex(Math.abs(offset+ 555), 251);
        curveVertex(Math.abs(offset+ 537), 249);
        curveVertex(Math.abs(offset+ 520), 250);
        endShape();
    }
