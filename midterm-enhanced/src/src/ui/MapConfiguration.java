package ui;

public class MapConfiguration {

    private int centerLatitude;
    private int centerLongitude;
    private int width;
    private int height;
    private int zoomLevel;

    public MapConfiguration() {
        centerLatitude = 0;
        centerLongitude = 0;
        width = 1024;
        height = 512;
        zoomLevel = 1;
    }

    public int getCenterLatitude() {
        return centerLatitude;
    }

    public void setCenterLatitude(int centerLatitude) {
        this.centerLatitude = centerLatitude;
    }

    public int getCenterLongitude() {
        return centerLongitude;
    }

    public void setCenterLongitude(int centerLongitude) {
        this.centerLongitude = centerLongitude;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getZoomLevel() {
        return zoomLevel;
    }

    public void setZoomLevel(int zoomLevel) {
        this.zoomLevel = zoomLevel;
    }
}
