package isp.lab4.exercise1;

public class Address {
    private String street;
    private String city;

    public Address(String street, String city) {
        this.street = street;
        this.city = city;
    }

    @Override
    public String toString() {
        return "Adress: street = " + this.street + ", city = " + this.city;
    }
}
