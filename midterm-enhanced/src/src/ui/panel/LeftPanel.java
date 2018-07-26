package ui.panel;

import controlP5.*;
import processing.core.PApplet;
import service.CountryService;

import java.util.List;

public class LeftPanel extends PApplet {

    private ControlP5 controlP5;
    private Accordion accordion;
    private String dropDownCountryValue;
    private int selectedRadioButtonIndex = 6;

    private boolean shuffleIsSelected = false;
    private boolean dropDownCountriesIsSelected = false;
    private List dropDownCountryNames;
    private PApplet parent;
    private MainPanel mainPanel;
    private CountryService countryService = CountryService.getInstance();

    public LeftPanel(PApplet parent, MainPanel mainPanel) {
        this.parent = parent;
        this.mainPanel = mainPanel;
        initData();
        initGui();
    }

    private void initData() {
        dropDownCountryNames = countryService.loadCountryNames("name", true);
    }

    private void initGui() {
        controlP5 = new ControlP5(parent);
        // group number 1, contains scrollable list
        Group g1 = controlP5.addGroup("Country List")
                .setBackgroundColor(parent.color(0, 64))
                .setBackgroundHeight(228);


        controlP5.addScrollableList("dropdown")
                .setPosition(10, 20)
                .setSize(150, 200)
                .setBarHeight(20)
                .setItemHeight(20)
                .addItems(dropDownCountryNames)
                .setType(ScrollableList.DROPDOWN);

        // group number 2, contains a radiobutton
        Group g2 = controlP5.addGroup("International Stats")
                .setBackgroundColor(parent.color(0, 64))
                .setBackgroundHeight(228);

        controlP5.addRadioButton("radio")
                .setPosition(10, 20)
                .setItemWidth(20)
                .setItemHeight(20)
                .addItem("LifeExpectancy", 0)
                .addItem("Population", 1)
                .addItem("Surface Area", 2)
                .addItem("Avg Male Height", 3)
                .addItem("Temperature", 4)
                .addItem("clear", 5)
                .setColorLabel(parent.color(255))
                .activate(5)
                .moveTo(g2)
        ;

        // group number 3, contains a bang and a slider
        Group g3 = controlP5.addGroup("Earthquake Data")
                .setBackgroundColor(parent.color(0, 64))
                .setBackgroundHeight(228);

        controlP5.addBang("shuffle")
                .setPosition(10, 20)
                .setSize(40, 50)
                .moveTo(g3);

        controlP5.addSlider("hello")
                .setPosition(60, 20)
                .setSize(100, 20)
                .setRange(100, 500)
                .setValue(100)
                .moveTo(g3);

        controlP5.addSlider("world")
                .setPosition(60, 50)
                .setSize(100, 20)
                .setRange(100, 500)
                .setValue(200)
                .moveTo(g3);

        // create a new accordion
        // add g1, g2, and g3 to the accordion.
        accordion = controlP5.addAccordion("acc")
                .setPosition(0, 0)
                .setWidth(200)
                .addItem(g1)
                .addItem(g2)
                .addItem(g3);

        controlP5.mapKeyFor(new ControlKey() {
            public void keyEvent() {
                accordion.open(0, 1, 2);
            }
        }, 'o');
        controlP5.mapKeyFor(new ControlKey() {
            public void keyEvent() {
                accordion.close(0, 1, 2);
            }
        }, 'c');
        controlP5.mapKeyFor(new ControlKey() {
            public void keyEvent() {
                accordion.setWidth(300);
            }
        }, '1');
        controlP5.mapKeyFor(new ControlKey() {
            public void keyEvent() {
                accordion.setPosition(0, 0);
                accordion.setItemHeight(190);
            }
        }, '2');
        controlP5.mapKeyFor(new ControlKey() {
            public void keyEvent() {
                accordion.setCollapseMode(ControlP5.ALL);
            }
        }, '3');
        controlP5.mapKeyFor(new ControlKey() {
            public void keyEvent() {
                accordion.setCollapseMode(ControlP5.SINGLE);
            }
        }, '4');
        controlP5.mapKeyFor(new ControlKey() {
            public void keyEvent() {
                controlP5.remove("myGroup1");
            }
        }, '0');

        accordion.open(0, 1, 2);

        // use Accordion.MULTI to allow multiple group
        // to be open at a time.
        accordion.setCollapseMode(Accordion.MULTI);

        // when in SINGLE mode, only 1 accordion
        // group can be open at a time.
        // accordion.setCollapseMode(Accordion.SINGLE);
    }

    public void radio(int selectedRadioButtonIndex) {
        deactivateShuffle();
        deactivateCountriesDropDown();
        this.selectedRadioButtonIndex = selectedRadioButtonIndex;
        int newColor = -1;
        switch (selectedRadioButtonIndex) {
            case (0):
                newColor = parent.color(0, 200);
                break;
            case (1):
                newColor = parent.color(255, 0, 0, 200);
                break;
            case (2):
                newColor = parent.color(0, 200, 140, 200);
                break;
            case (3):
                newColor = parent.color(0, 128, 255, 200);
                break;
            case (4):
                newColor = parent.color(50, 128);
                break;
        }
        mainPanel.changeColor(newColor);
    }

    public void dropdown(int n) {
        System.out.println("n = " + n);
        deactivateShuffle();
        selectedRadioButtonIndex = 6;
        dropDownCountryValue = dropDownCountryNames.get(n).toString();
        activateCountriesDropDown();
        /* request the selected item based on index n */
        parent.println(n, controlP5.get(ScrollableList.class, "dropdown").getItem(n));
        parent.println(dropDownCountryValue);

        CColor c = new CColor();
        c.setBackground(parent.color(255, 0, 0));
        controlP5.get(ScrollableList.class, "dropdown").getItem(n).put("color", c);

    }


    private void deactivateShuffle() {
        shuffleIsSelected = false;
    }

    private void deactivateCountriesDropDown() {
        dropDownCountriesIsSelected = false;
    }

    private void activateCountriesDropDown() {
        dropDownCountriesIsSelected = true;
    }


    public boolean isShuffleSelected() {
        return shuffleIsSelected;
    }

    public boolean isCountriesDropDownSelected() {
        return dropDownCountriesIsSelected;
    }

    public boolean isAnyRadioButtonSelected() {
        return selectedRadioButtonIndex < 6;
    }

    public int getSelectedRadioButtonIndex() {
        return selectedRadioButtonIndex;
    }

    private void activateShuffle() {
        shuffleIsSelected = true;
    }

    public void shuffle() {
        activateShuffle();
        deactivateCountriesDropDown();
        selectedRadioButtonIndex = 6;
    }

    public String getSelectedCountryName() {
        return dropDownCountryValue;
    }
}
