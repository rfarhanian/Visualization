package ui.panel;

import processing.core.PApplet;

public class BottomPanel {

    private PApplet parent;

    private int countryCounter;
    private int lifeExpectancyCounter;
    private int populationCounter;
    private int surfaceAreaCounter;
    private int temperatureCounter;

    public BottomPanel(PApplet parent) {
        this.parent = parent;
        countryCounter = 0;
        lifeExpectancyCounter = 0;
        populationCounter = 0;
        surfaceAreaCounter = 0;
        temperatureCounter = 0;
    }

    public void typeWriteCountry(String countryName) {
        String value = "Country:" + countryName;
        if (countryCounter < value.length()) {
            countryCounter++;
        } else {
            countryCounter = 0;
        }
        parent.text(value.substring(0, countryCounter), 201, 516, 1020, 192);
    }

    public void typeWriteLifeExpectancy(Double lifeExpectancy) {
        String value = "Life Expectancy:" + (lifeExpectancy != null ? lifeExpectancy.toString() : "NA");
        if (lifeExpectancyCounter < value.length()) {
            lifeExpectancyCounter++;
        } else if (lifeExpectancyCounter > value.length()) {
            lifeExpectancyCounter = 0;
        }
        parent.text(value.substring(0, lifeExpectancyCounter), 201, 546, 1020, 192);
    }

    public void typeWritePopulation(Integer pop) {
        String value = "Population:" + (pop != null ? pop.toString() : "NA");
        if (populationCounter < value.length()) {
            populationCounter++;
        } else if (populationCounter > value.length()) {
            populationCounter = 0;
        }
        parent.text(value.substring(0, populationCounter), 201, 576, 1020, 192);
    }

    public void typeWriteSurfaceArea(Float surfaceArea) {
        String value = "Surface Area:" + (surfaceArea != null ? surfaceArea.toString() : "NA");
        if (surfaceAreaCounter < value.length()) {
            surfaceAreaCounter++;
        } else if (surfaceAreaCounter > value.length()) {
            surfaceAreaCounter = 0;
        }
        parent.text(value.substring(0, surfaceAreaCounter), 201, 606, 1020, 192);
    }

    public void typeWriteTemperature(Float temperature) {
        String value = "Temperature:" + (temperature != null ? temperature.toString() : "NA");
        if (temperatureCounter < value.length()) {
            temperatureCounter++;
        } else if (temperatureCounter > value.length()) {
            temperatureCounter = 0;
        }
        parent.text(value.substring(0, temperatureCounter), 201, 636, 1020, 192);
    }

}
