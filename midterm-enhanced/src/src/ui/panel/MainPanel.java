package ui.panel;

import dao.CountryDao;
import processing.core.PApplet;
import processing.core.PImage;
import ui.MapConfiguration;

public class MainPanel {

    private int color;
    private PImage mapImage;
    private PImage pin;
    private MapConfiguration mapConfiguration = new MapConfiguration();

    private PApplet parent;

    public MainPanel(PApplet parent) {
        this.parent = parent;
        color = parent.color(0, 160, 100);
    }

    public void initData() {
        //Accessing maps through mapboxAPI and loading it
        String url = "https://api.mapbox.com/styles/v1/mapbox/dark-v9/static/" +
                mapConfiguration.getCenterLongitude() + "," + mapConfiguration.getCenterLatitude() + "," + mapConfiguration.getZoomLevel() + "/" +
                mapConfiguration.getWidth() + "x" + mapConfiguration.getHeight() +
                "?access_token=pk.eyJ1Ijoicm1hbmRhdmEiLCJhIjoiY2pqZ2x3dmZrNWE4cTNrcDE5cmg5d29qZiJ9.Nm_sF_3GjloxJxY2JuQN_w";
        mapImage = parent.loadImage(url, "jpg");

        pin = parent.loadImage(CountryDao.BASE_FOLDER + "/Droppin.png");
    }

    public void changeColor(int newColor) {
        this.color = newColor;
    }

    public int getColor() {
        return color;
    }

    public PImage getMapImage() {
        return mapImage;
    }

    public PImage getPin() {
        return pin;
    }

    public MapConfiguration getMapConfiguration() {
        return mapConfiguration;
    }
}
