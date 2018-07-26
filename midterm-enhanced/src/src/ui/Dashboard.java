package ui;

import domain.Country;
import processing.core.PApplet;
import processing.core.PFont;
import service.CountryService;
import ui.panel.BottomPanel;
import ui.panel.LeftPanel;
import ui.panel.MainPanel;
import util.GeneralUtils;

import java.util.List;

public class Dashboard extends PApplet {

    private static final int BACK_GROUND_COLOR = 220;
    private static final int DASHBOARD_FRAME_RATE = 5;


    private MainPanel mainPanel;
    private LeftPanel leftPanel;
    private BottomPanel bottomPanel;

    /**
     * @todo: Move me to data loader
     */
    private String[] earthquakes;

    public static void main(String[] args) {
        String[] appletArgs = new String[]{"ui.Dashboard"};
        if (args != null) {
            PApplet.main(concat(appletArgs, args));
        } else {
            PApplet.main(appletArgs);
        }
    }

    public void setup() {
        gui();
        initData();
    }

    private void gui() {
        background(BACK_GROUND_COLOR);
        frameRate(DASHBOARD_FRAME_RATE);

        PFont font = createFont("Arial Rounded MT", 48);
        textFont(font, 20);
        noStroke();
        smooth();
        mainPanel = new MainPanel(this);
        leftPanel = new LeftPanel(this, mainPanel);
        bottomPanel = new BottomPanel(this);
    }

    private void initData() {
        mainPanel.initData();

        //Loading earthquakes csv from the below URL
        earthquakes = loadStrings("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.csv");
    }

    public void dropdown(int n) {
        leftPanel.dropdown(n);
    }

    public void radio(int selectedRadioButtonIndex) {
        leftPanel.radio(selectedRadioButtonIndex);
    }

    public void draw() {
        //background(220);
        background(0, 64);
        //surface.setTitle(mouseX + ", " + mouseY);
        pushMatrix();
        translate(200, 0);
        image(mainPanel.getMapImage(), 0, 0);
        popMatrix();

        fill(mainPanel.getColor());


//        float s1 = leftPanelControlP5.getController("hello").getValue();
//        float s2 = leftPanelControlP5.getController("world").getValue();

        if (leftPanel.isShuffleSelected()) {
            show(earthquakes);
        } else if (leftPanel.isCountriesDropDownSelected() || leftPanel.isAnyRadioButtonSelected()) {
            show();
        }
    }

    public void show() {
        List<Country> countries = CountryService.getInstance().load("name", true);
        String country;

        for (Country aCountry : countries) {
            Float x = aCountry.getX();
            Float y = aCountry.getY();
            // This addition fixes the case where the longitude is non-zero and
            // points can go off the screen.
            if (x != null && y != null) {
                if (x < -width / 2) {
                    x += width;
                } else if (x > width / 2) {
                    x -= width;
                }

                if (leftPanel.isCountriesDropDownSelected()) { //@todo: Main panel should take care of this part
                    country = aCountry.getName();
                    if (country.equals(leftPanel.getSelectedCountryName())) {
                        //tint(255, 127);
                        image(mainPanel.getPin(), x + 706, y + 255, 10, 15);
                        fill(128, 235, 94);
                        bottomPanel.typeWriteCountry(aCountry.getName());
                        bottomPanel.typeWriteLifeExpectancy(aCountry.getExpectancy());
                        bottomPanel.typeWritePopulation(aCountry.getPopulation());
                        bottomPanel.typeWriteSurfaceArea(aCountry.getArea());
                        bottomPanel.typeWriteTemperature(aCountry.getTemperature());
                    }
                } else if (leftPanel.isAnyRadioButtonSelected()) {
                    int newColor = -1;
                    switch (leftPanel.getSelectedRadioButtonIndex()) {
                        case (0): //@todo: Main panel should do the following
                            newColor = color(0, 160, 100, 200);
                            Float expectancy = (aCountry.getExpectancy() != null ? aCountry.getExpectancy().floatValue() : 0) / 6;
                            noStroke();
                            fill(newColor, 200);
                            ellipse(x + 710, y + 255, expectancy, expectancy);
                            break;
                        case (1):
                            newColor = color(245, 215, 94, 200);
                            Float population = (aCountry.getPopulation() != null ? aCountry.getPopulation().floatValue() : 0) / 6000000;
                            noStroke();
                            fill(newColor, 200);
                            ellipse(x + 710, y + 255, population, population);
                            break;
                        case (2):
                            newColor = color(230, 83, 41, 200);
                            Float area = (aCountry.getArea() != null ? aCountry.getArea().floatValue() : 0) / 60000;
                            noStroke();
                            fill(newColor, 200);
                            ellipse(x + 710, y + 255, area, area);
                            break;
                        case (3):
                            newColor = color(0, 128, 255, 200);
                            Float height1 = ((aCountry.getHeight() != null ? aCountry.getHeight().floatValue() : 0) - 160) / 6;
                            noStroke();
                            fill(newColor, 200);
                            ellipse(x + 710, y + 255, height1, height1);
                            break;
                        case (4)://mainPanelColor=color(50,128);
                            newColor = color(255, 0, 0, 200);
                            Float temp = (aCountry.getTemperature() != null ? aCountry.getTemperature().floatValue() : 0) / 2;
                            noStroke();
                            fill(newColor, 200);
                            ellipse(x + 710, y + 255, temp, temp);
                            break;
                        case (5):
                            newColor = color(50, 128);
                            break;

                    }
                    mainPanel.changeColor(newColor);
                }
            }
        }
    }

    public void show(String[] strar) {
        MapConfiguration mapConfiguration = mainPanel.getMapConfiguration();
        float cx = GeneralUtils.mercX(mapConfiguration.getCenterLongitude(), mapConfiguration.getZoomLevel());
        float cy = GeneralUtils.mercY(mapConfiguration.getCenterLatitude(), mapConfiguration.getZoomLevel());
        String[] strarray = strar;

        for (int i = 1; i < strarray.length; i++) {
            String[] data = strarray[i].split(",");
            //console.log(data);
            float lat = PApplet.parseFloat(data[1]);
            float lon = PApplet.parseFloat(data[2]);
            float mag = PApplet.parseFloat(data[4]);
            float x = GeneralUtils.mercX(lon, mapConfiguration.getZoomLevel()) - cx;
            float y = GeneralUtils.mercY(lat, mapConfiguration.getZoomLevel()) - cy;

            // This addition fixes the case where the longitude is non-zero and
            // points can go off the screen.
            if (x < -width / 2) {
                x += width;
            } else if (x > width / 2) {
                x -= width;
            }

            mag = pow(10, mag);
            mag = sqrt(mag);
            float magmax = sqrt(pow(10, 10));
            float d = map(mag, 0, magmax, 0, 180);
            stroke(255, 0, 255);
            fill(255, 0, 255, 200);
            //ellipse(x+510, y+260, d, d);
            ellipse(x + 710, y + 255, d, d);
        }
    }

    public void settings() {
        size(1224, 712);
        smooth();
    }
}
