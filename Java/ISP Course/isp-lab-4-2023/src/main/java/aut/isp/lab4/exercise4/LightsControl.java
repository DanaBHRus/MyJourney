package aut.isp.lab4.exercise4;

public class LightsControl {
    private float hoursOfLight;

    public LightsControl(float hoursOfLight) {
        this.hoursOfLight = hoursOfLight;
    }

    public void setHoursOfLight(float hoursOfLight) {
        this.hoursOfLight = hoursOfLight;
    }

    public void checkHoursOfLight() {
        if (this.hoursOfLight < 6 || this.hoursOfLight > 8) {
            System.out.println("Not a good light time!");
            setHoursOfLight(7F);
        } else System.out.println("Perfect light time");
    }

    @Override
    public String toString() {
        return "Hours at light: " + this.hoursOfLight;
    }
}
