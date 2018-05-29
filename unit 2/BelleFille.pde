public class BelleFille {

    private boolean showImage = false;
    

    public void renderImage() {
        PImage belleFille = loadImage("belleFille.jpg");
        image(belleFille, 700, 700);
        belleFille.resize(350, 350);
        if(showImage) {
            image(belleFille, 0, 177);
        }
    }
    
    public void doDraw(int offset) {
        outline(offset);
        nose(offset);
        mouth(offset);
        tongue(offset);
        leftEye(offset);
        rightEye(offset);
    }

    private void outline(int offset) {
        noStroke();
        fill(250, 250, 250);
        beginShape();
        curveVertex(Math.abs(offset+ 80), 498);
        curveVertex(Math.abs(offset+ 103), 499);
        curveVertex(Math.abs(offset+ 106), 499);
        curveVertex(Math.abs(offset+ 99), 490);
        curveVertex(Math.abs(offset+ 97), 469);
        curveVertex(Math.abs(offset+ 99), 464);
        curveVertex(Math.abs(offset+ 101), 473);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 101), 473);
        curveVertex(Math.abs(offset+ 98), 465);
        curveVertex(Math.abs(offset+ 98), 455);
        curveVertex(Math.abs(offset+ 98), 447);
        curveVertex(Math.abs(offset+ 99), 439);
        curveVertex(Math.abs(offset+ 100), 431);
        curveVertex(Math.abs(offset+ 100), 431);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 99), 439);
        curveVertex(Math.abs(offset+ 100), 433);
        curveVertex(Math.abs(offset+ 103), 425);
        curveVertex(Math.abs(offset+ 106), 414);
        curveVertex(Math.abs(offset+ 111), 406);
        curveVertex(Math.abs(offset+ 110), 400);
        curveVertex(Math.abs(offset+ 115), 396);
        curveVertex(Math.abs(offset+ 115), 396);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 115), 396);
        curveVertex(Math.abs(offset+ 114), 398);
        curveVertex(Math.abs(offset+ 115), 393);
        curveVertex(Math.abs(offset+ 116), 388);
        curveVertex(Math.abs(offset+ 116), 385);
        curveVertex(Math.abs(offset+ 118), 383);
        curveVertex(Math.abs(offset+ 118), 383);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 118), 383);
        curveVertex(Math.abs(offset+ 118), 383);
        curveVertex(Math.abs(offset+ 114), 377);
        curveVertex(Math.abs(offset+ 115), 371);
        curveVertex(Math.abs(offset+ 114), 363);
        curveVertex(Math.abs(offset+ 115), 353);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 115), 367);
        curveVertex(Math.abs(offset+ 115), 367);
        curveVertex(Math.abs(offset+ 115), 353);
        curveVertex(Math.abs(offset+ 114), 346);
        curveVertex(Math.abs(offset+ 116), 339);
        curveVertex(Math.abs(offset+ 117), 330);
        curveVertex(Math.abs(offset+ 118), 320);
        curveVertex(Math.abs(offset+ 120), 311);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 118), 311);
        curveVertex(Math.abs(offset+ 118), 320);
        curveVertex(Math.abs(offset+ 122), 301);
        curveVertex(Math.abs(offset+ 126), 283);
        curveVertex(Math.abs(offset+ 126), 283);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 126), 284);
        curveVertex(Math.abs(offset+ 126), 284);
        curveVertex(Math.abs(offset+ 127), 275);
        curveVertex(Math.abs(offset+ 130), 262);
        curveVertex(Math.abs(offset+ 138), 249);
        curveVertex(Math.abs(offset+ 149), 244);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 138), 251);
        curveVertex(Math.abs(offset+ 138), 251);
        curveVertex(Math.abs(offset+ 138), 245);
        curveVertex(Math.abs(offset+ 148), 234);
        curveVertex(Math.abs(offset+ 156), 223);
        curveVertex(Math.abs(offset+ 159), 233);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 156), 223);
        curveVertex(Math.abs(offset+ 156), 223);
        curveVertex(Math.abs(offset+ 159), 223);
        curveVertex(Math.abs(offset+ 166), 192);
        curveVertex(Math.abs(offset+ 170), 182);
        curveVertex(Math.abs(offset+ 184), 166);
        curveVertex(Math.abs(offset+ 210), 185);
        curveVertex(Math.abs(offset+ 210), 185);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 210), 185);
        curveVertex(Math.abs(offset+ 210), 185);
        curveVertex(Math.abs(offset+ 215), 202);
        curveVertex(Math.abs(offset+ 230), 211);
        curveVertex(Math.abs(offset+ 241), 221);
        curveVertex(Math.abs(offset+ 241), 221);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 241), 221);
        curveVertex(Math.abs(offset+ 241), 221);
        curveVertex(Math.abs(offset+ 255), 228);
        curveVertex(Math.abs(offset+ 259), 240);
        curveVertex(Math.abs(offset+ 274), 239);
        curveVertex(Math.abs(offset+ 284), 236);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 274), 239);
        curveVertex(Math.abs(offset+ 274), 239);
        curveVertex(Math.abs(offset+ 289), 241);
        curveVertex(Math.abs(offset+ 289), 249);
        curveVertex(Math.abs(offset+ 289), 250);
        curveVertex(Math.abs(offset+ 289), 250);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 289), 249);
        curveVertex(Math.abs(offset+ 289), 249);
        curveVertex(Math.abs(offset+ 323), 239);
        curveVertex(Math.abs(offset+ 332), 261);
        curveVertex(Math.abs(offset+ 333), 263);
        curveVertex(Math.abs(offset+ 324), 303);
        curveVertex(Math.abs(offset+ 309), 338);
        curveVertex(Math.abs(offset+ 304), 340);
        curveVertex(Math.abs(offset+ 304), 340);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 323), 310);
        curveVertex(Math.abs(offset+ 323), 310);
        curveVertex(Math.abs(offset+ 328), 316);
        curveVertex(Math.abs(offset+ 336), 365);
        curveVertex(Math.abs(offset+ 341), 391);
        curveVertex(Math.abs(offset+ 341), 391);
        //endShape();

        //beginShape();
        curveVertex(Math.abs(offset+ 341), 391);
        curveVertex(Math.abs(offset+ 341), 391);
        curveVertex(Math.abs(offset+ 324), 406);
        curveVertex(Math.abs(offset+ 314), 441);
        curveVertex(Math.abs(offset+ 296), 478);
        curveVertex(Math.abs(offset+ 284), 499);
        curveVertex(Math.abs(offset+ 284), 499);
        endShape();

    }

    private void nose(int offset) {
        fill(0,0,0);
        beginShape();
        curveVertex(Math.abs(offset+ 126), 341);
        curveVertex(Math.abs(offset+ 126), 341);
        curveVertex(Math.abs(offset+ 132), 339);
        curveVertex(Math.abs(offset+ 146), 341);
        curveVertex(Math.abs(offset+ 148), 353);
        curveVertex(Math.abs(offset+ 151), 363);
        curveVertex(Math.abs(offset+ 150), 374);
        curveVertex(Math.abs(offset+ 138), 386);
        curveVertex(Math.abs(offset+ 129), 387);
        curveVertex(Math.abs(offset+ 126), 387);
        curveVertex(Math.abs(offset+ 120), 378);
        curveVertex(Math.abs(offset+ 115), 368);
        curveVertex(Math.abs(offset+ 117), 356);
        curveVertex(Math.abs(offset+ 119), 345);
        curveVertex(Math.abs(offset+ 122), 342);
        curveVertex(Math.abs(offset+ 130), 340);
        curveVertex(Math.abs(offset+ 126), 341);
        endShape();
    }

    private void mouth(int offset) {
        fill(0, 0, 0);
        beginShape();
        curveVertex(Math.abs(offset+ 119), 380);
        curveVertex(Math.abs(offset+ 122), 392);
        curveVertex(Math.abs(offset+ 137), 407);
        curveVertex(Math.abs(offset+ 156), 420);
        curveVertex(Math.abs(offset+ 165), 423);
        endShape();

        beginShape();
        curveVertex(Math.abs(offset+ 156), 420);
        curveVertex(Math.abs(offset+ 156), 420);
        curveVertex(Math.abs(offset+ 165), 422);
        curveVertex(Math.abs(offset+ 179), 422);
        curveVertex(Math.abs(offset+ 185), 419);
        curveVertex(Math.abs(offset+ 201), 402);
        curveVertex(Math.abs(offset+ 204), 415);
        curveVertex(Math.abs(offset+ 204), 415);
        endShape();

        beginShape();
        curveVertex(Math.abs(offset+ 201), 402);
        curveVertex(Math.abs(offset+ 201), 402);
        curveVertex(Math.abs(offset+ 202), 417);
        curveVertex(Math.abs(offset+ 190), 429);
        curveVertex(Math.abs(offset+ 175), 440);
        curveVertex(Math.abs(offset+ 156), 447);
        curveVertex(Math.abs(offset+ 156), 447);
        endShape();

        beginShape();
        curveVertex(Math.abs(offset+ 175), 440);
        curveVertex(Math.abs(offset+ 173), 424);
        curveVertex(Math.abs(offset+ 173), 431);
        curveVertex(Math.abs(offset+ 162), 432);
        curveVertex(Math.abs(offset+ 168), 435);
        curveVertex(Math.abs(offset+ 157), 446);
        curveVertex(Math.abs(offset+ 157), 446);
        endShape();

        triangle(Math.abs(offset+173), 423, Math.abs(offset+187), 420, Math.abs(offset+167), 437);

        beginShape();
        curveVertex(Math.abs(offset+ 164), 428);
        curveVertex(Math.abs(offset+ 164), 428);
        curveVertex(Math.abs(offset+ 167), 428);
        curveVertex(Math.abs(offset+ 165), 429);
        curveVertex(Math.abs(offset+ 163), 432);
        curveVertex(Math.abs(offset+ 163), 430);
        curveVertex(Math.abs(offset+ 156), 444);
        curveVertex(Math.abs(offset+ 172), 435);
        curveVertex(Math.abs(offset+ 169), 428);
        curveVertex(Math.abs(offset+ 169), 428);
        endShape();

        beginShape();
        curveVertex(Math.abs(offset+ 155), 444);
        curveVertex(Math.abs(offset+ 155), 444);
        curveVertex(Math.abs(offset+ 152), 453);
        curveVertex(Math.abs(offset+ 152), 450);
        curveVertex(Math.abs(offset+ 151), 452);
        curveVertex(Math.abs(offset+ 150), 452);
        curveVertex(Math.abs(offset+ 147), 462);
        curveVertex(Math.abs(offset+ 146), 467);
        curveVertex(Math.abs(offset+ 152), 461);
        curveVertex(Math.abs(offset+ 155), 458);
        curveVertex(Math.abs(offset+ 155), 455);
        curveVertex(Math.abs(offset+ 155), 450);
        curveVertex(Math.abs(offset+ 155), 450);
        endShape();

    }

    private void tongue(int offset) {
        fill(121, 74, 90);
        beginShape();
        curveVertex(Math.abs(offset+ 131), 406);
        curveVertex(Math.abs(offset+ 131), 406);
        //curveVertex(Math.abs(offset+ 130), 413); 
        //curveVertex(Math.abs(offset+ 127), 413);
        curveVertex(Math.abs(offset+ 123), 412);
        curveVertex(Math.abs(offset+ 120), 415);
        curveVertex(Math.abs(offset+ 117), 418);
        curveVertex(Math.abs(offset+ 115), 426);
        curveVertex(Math.abs(offset+ 114), 432);
        curveVertex(Math.abs(offset+ 109), 452);
        curveVertex(Math.abs(offset+ 109), 465);
        curveVertex(Math.abs(offset+ 110), 475);
        curveVertex(Math.abs(offset+ 115), 482);
        curveVertex(Math.abs(offset+ 120), 486);
        curveVertex(Math.abs(offset+ 127), 488);
        curveVertex(Math.abs(offset+ 137), 478);
        curveVertex(Math.abs(offset+ 142), 471);
        curveVertex(Math.abs(offset+ 145), 468);
        curveVertex(Math.abs(offset+ 148), 456);
        curveVertex(Math.abs(offset+ 154), 448);
        curveVertex(Math.abs(offset+ 158), 439);
        curveVertex(Math.abs(offset+ 163), 430);
        curveVertex(Math.abs(offset+ 166), 425);
        curveVertex(Math.abs(offset+ 154), 421);
        curveVertex(Math.abs(offset+ 145), 417);
        curveVertex(Math.abs(offset+ 137), 410);
        curveVertex(Math.abs(offset+ 131), 406);
        curveVertex(Math.abs(offset+ 131), 406);
        endShape();
    }

    private void leftEye(int offset) {
        fill(133, 127, 134);
        //fill(0, 0, 0);
        beginShape();
        curveVertex(Math.abs(offset+ 122), 340);
        curveVertex(Math.abs(offset+ 122), 340);
        curveVertex(Math.abs(offset+ 126), 332);
        curveVertex(Math.abs(offset+ 128), 332);
        curveVertex(Math.abs(offset+ 132), 325);
        curveVertex(Math.abs(offset+ 138), 317);
        curveVertex(Math.abs(offset+ 138), 315);
        curveVertex(Math.abs(offset+ 143), 313);
        curveVertex(Math.abs(offset+ 140), 316);
        curveVertex(Math.abs(offset+ 143), 311);
        endShape();

        fill(132, 127, 124);
        //noFill();
        beginShape();
        curveVertex(Math.abs(offset+ 145), 313);
        curveVertex(Math.abs(offset+ 160), 302);
        curveVertex(Math.abs(offset+ 166), 292);
        curveVertex(Math.abs(offset+ 170), 282);
        curveVertex(Math.abs(offset+ 167), 270);
        curveVertex(Math.abs(offset+ 161), 269);
        curveVertex(Math.abs(offset+ 154), 275);
        curveVertex(Math.abs(offset+ 152), 285);
        curveVertex(Math.abs(offset+ 149), 293);
        curveVertex(Math.abs(offset+ 145), 303);
        curveVertex(Math.abs(offset+ 143), 313);
        curveVertex(Math.abs(offset+ 143), 313);
        endShape();

        fill(0, 0, 0);
        beginShape();
        curveVertex(Math.abs(offset+ 166), 290);
        curveVertex(Math.abs(offset+ 161), 287);
        curveVertex(Math.abs(offset+ 156), 287);
        curveVertex(Math.abs(offset+ 153), 302);
        curveVertex(Math.abs(offset+ 155), 300);
        curveVertex(Math.abs(offset+ 155), 304);
        curveVertex(Math.abs(offset+ 161), 301);
        curveVertex(Math.abs(offset+ 163), 297);
        curveVertex(Math.abs(offset+ 165), 293);
        curveVertex(Math.abs(offset+ 166), 290);
        curveVertex(Math.abs(offset+ 166), 290);
        endShape();

        //stroke(4);
        fill(0, 0, 0);
        beginShape();
        curveVertex(Math.abs(offset+ 167), 289);
        curveVertex(Math.abs(offset+ 167), 289);
        curveVertex(Math.abs(offset+ 165), 287);
        curveVertex(Math.abs(offset+ 162), 284);
        curveVertex(Math.abs(offset+ 160), 285);
        curveVertex(Math.abs(offset+ 157), 285);
        curveVertex(Math.abs(offset+ 157), 285);
        endShape();
    }

    private void rightEye(int offset) {
        fill(21, 18, 17);
        beginShape();
        curveVertex(Math.abs(offset+ 201), 329);
        curveVertex(Math.abs(offset+ 211), 326);
        curveVertex(Math.abs(offset+ 215), 326);
        curveVertex(Math.abs(offset+ 220), 331);
        curveVertex(Math.abs(offset+ 222), 335);
        curveVertex(Math.abs(offset+ 223), 337);
        curveVertex(Math.abs(offset+ 226), 339);
        curveVertex(Math.abs(offset+ 227), 339);
        curveVertex(Math.abs(offset+ 222), 339);
        curveVertex(Math.abs(offset+ 216), 343);
        curveVertex(Math.abs(offset+ 213), 343);
        curveVertex(Math.abs(offset+ 209), 343);
        curveVertex(Math.abs(offset+ 206), 340);
        curveVertex(Math.abs(offset+ 204), 338);
        curveVertex(Math.abs(offset+ 203), 337);
        curveVertex(Math.abs(offset+ 200), 336);
        curveVertex(Math.abs(offset+ 200), 333);
        curveVertex(Math.abs(offset+ 201), 329);
        endShape();
    }

}
