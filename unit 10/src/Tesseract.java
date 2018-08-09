
import processing.core.PApplet;

import java.util.Random;

public class Tesseract extends PApplet {

    private int Nmax = 1000;
    private float M = 50;
    private float H = 0.99f;
    private float HH = 0.01f;

    private float X[] = new float[Nmax + 1];
    private float Y[] = new float[Nmax + 1];
    private float Z[] = new float[Nmax + 1];
    private float V[] = new float[Nmax + 1];
    private float dV[] = new float[Nmax + 1];
    private float L;
    private float R = 2 * sqrt((4 * PI * (200 * 200) / Nmax) / (2 * sqrt(3)));
    private float Lmin;
    private int N;
    private int NN;
    private float KX;
    private float KY;
    private float KZ;
    private float KV;
    private float KdV;
    private int K;
    private Random random = new Random();
    private int v1 = random.nextInt(255);
    private int v2 = random.nextInt(255);
    private int v3 = random.nextInt(255);
    private double factor = 1.2;

    public static void main(String[] args) {
        String[] appletArgs = new String[]{"ui.applet.Tesseract"};
        if (args != null) {
            PApplet.main(concat(appletArgs, args));
        } else {
            PApplet.main(appletArgs);
        }
    }

    @Override
    public void settings() {
        size(600, 600);
    }

    public void setup() {
        background(0, 0, 0);
        noSmooth();
        stroke(255, 255, 255);
        fill(50, 50, 50);

        for (N = 0; N <= Nmax; N++) {
            X[N] = random(-300, +300);
            Y[N] = random(-300, +300);
            Z[N] = random(-300, +300);
        }
    }

    public void draw() {

        background(v1, v2, v3);

        for (N = 0; N <= Nmax; N++) {
            for (NN = N + 1; NN <= Nmax; NN++) {
                L = sqrt(((X[N] - X[NN]) * (X[N] - X[NN])) + ((Y[N] - Y[NN]) * (Y[N] - Y[NN])));
                L = sqrt(((Z[N] - Z[NN]) * (Z[N] - Z[NN])) + (L * L));
                if (L < R) {
                    X[N] = X[N] - ((X[NN] - X[N]) * ((R - L) / (3 * L)));
                    Y[N] = Y[N] - ((Y[NN] - Y[N]) * ((R - L) / (3 * L)));
                    Z[N] = Z[N] - ((Z[NN] - Z[N]) * ((R - L) / (3 * L)));
                    X[NN] = X[NN] + ((X[NN] - X[N]) * ((R - L) / (3 * L)));
                    Y[NN] = Y[NN] + ((Y[NN] - Y[N]) * ((R - L) / (3 * L)));
                    Z[NN] = Z[NN] + ((Z[NN] - Z[N]) * ((R - L) / (3 * L)));
                    dV[N] = dV[N] + ((V[NN] - V[N]) / M);
                    dV[NN] = dV[NN] - ((V[NN] - V[N]) / M);
                    stroke(125 + (Z[N] / 3), 125 + (Z[N] / 3), 125 + (Z[N] / 3));
                    line(((float) (X[N] * factor * (200 + V[N]) / 200 + 300)), ((float) (Y[N] * factor * (200 + V[N]) / 200 + 300)),
                            ((float) (X[NN] * factor * (200 + V[NN]) / 200 + 300)), ((float) (Y[NN] * factor * (200 + V[NN]) / 200 + 300)));
                }
                if (Z[N] > Z[NN]) {
                    KX = X[N];
                    KY = Y[N];
                    KZ = Z[N];
                    KV = V[N];
                    KdV = dV[N];
                    X[N] = X[NN];
                    Y[N] = Y[NN];
                    Z[N] = Z[NN];
                    V[N] = V[NN];
                    dV[N] = dV[NN];
                    X[NN] = KX;
                    Y[NN] = KY;
                    Z[NN] = KZ;
                    V[NN] = KV;
                    dV[NN] = KdV;
                }
            }
            L = sqrt((X[N] * X[N]) + (Y[N] * Y[N]));
            L = sqrt((Z[N] * Z[N]) + (L * L));
            X[N] = X[N] + (X[N] * (200 - L) / (2 * L));
            Y[N] = Y[N] + (Y[N] * (200 - L) / (2 * L));
            Z[N] = Z[N] + (Z[N] * (200 - L) / (2 * L));
            KZ = Z[N];
            KX = X[N];
            Z[N] = (KZ * cos((float) (300 - mouseX) / 10000)) - (KX * sin((float) (300 - mouseX) / 10000));
            X[N] = (KZ * sin((float) (300 - mouseX) / 10000)) + (KX * cos((float) (300 - mouseX) / 10000));
            KZ = Z[N];
            KY = Y[N];
            Z[N] = (KZ * cos((float) (300 - mouseY) / 10000)) - (KY * sin((float) (300 - mouseY) / 10000));
            Y[N] = (KZ * sin((float) (300 - mouseY) / 10000)) + (KY * cos((float) (300 - mouseY) / 10000));
            dV[N] = dV[N] - (V[N] * HH);
            V[N] = V[N] + dV[N];
            dV[N] = dV[N] * H;
        }

    }

    public void mousePressed() {
        factor = (1 + random.nextInt(4)) * 0.1 + 1;
        v1 = random.nextInt(255);
        v2 = random.nextInt(255);
        v3 = random.nextInt(255);
        Lmin = 600;
        NN = 0;
        for (N = 0; N <= Nmax; N++) {
            L = sqrt(((mouseX - (300 + X[N])) * (mouseX - (300 + X[N]))) + ((mouseY - (300 + Y[N])) * (mouseY - (300 + Y[N]))));
            if (Z[N] > 0 && L < Lmin) {
                NN = N;
                Lmin = L;
            }
        }
        if (K == 0) {
            dV[NN] = -200;
            K = 1;
        } else {
            dV[NN] = +200;
            K = 0;
        }
    }
}
