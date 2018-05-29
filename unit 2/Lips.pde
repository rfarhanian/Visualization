 void lips(int offset){
        noFill();
        noStroke();
        fill(#75484D,255);
//stroke(#542F37,255);
        strokeWeight(1);
        beginShape();
        curveVertex(Math.abs(offset+ 416), 404);
        curveVertex(Math.abs(offset+ 414), 406);
        curveVertex(Math.abs(offset+ 454), 394);
        curveVertex(Math.abs(offset+ 462), 402);
        curveVertex(Math.abs(offset+ 474), 394);
        curveVertex(Math.abs(offset+ 511), 409);
//stroke(#542F37,255);
        curveVertex(Math.abs(offset+ 459), 435);
        curveVertex(Math.abs(offset+ 414), 406);
        curveVertex(Math.abs(offset+ 416), 404);
        endShape();

//middle lipline
        stroke(#542F37,255);
        strokeWeight(2);
        beginShape();
        curveVertex(Math.abs(offset+ 417), 407);
        curveVertex(Math.abs(offset+ 417), 407);
        curveVertex(Math.abs(offset+ 463), 412);
        curveVertex(Math.abs(offset+ 510), 409);
        curveVertex(Math.abs(offset+ 510), 409);
        endShape();
//arc(460, 408, 95, 14, 0, PI, OPEN);
//arc(467, 408, 89.5, 27, 0, PI, OPEN);
//bezierVertex(340,287, 356, 444,456, 253);
    }
