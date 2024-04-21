package aut.isp.lab4.exercise3;

public class FishFeeder {
    private String manufacturer;
    private String model;
    private int meals;

    public FishFeeder(String manufacturer, String model, int meals) {
        this.manufacturer = manufacturer;
        this.model = model;
        this.meals = meals;
    }

    public int getMeals() {
        return meals;
    }

    private void feed() {
        meals--;
        System.out.println("Eat one meal.");
    }

    private void fillUp() {
        meals = 14;
        System.out.println("Refill meal.");
    }

    public void showFeed() {
        feed();
    }

    public void showFillUp() {
        fillUp();
    }

    @Override
    public String toString() {
        return "The manufacturer " + this.manufacturer + " makes the model " + this.model + ". It has the level of food " + this.meals;
    }
}
