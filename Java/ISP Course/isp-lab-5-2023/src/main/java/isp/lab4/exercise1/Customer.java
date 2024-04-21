package isp.lab4.exercise1;

public class Customer {
    private String customerId;
    private String name;
    private String phone;
    private Address address;

    public Customer(String customerId, String name, String phone, Address address) {
        this.customerId = customerId;
        this.name = name;
        this.phone = phone;
        this.address = address;
    }

    @Override
    public String toString() {
        return "Customer: customerId = " + this.customerId + ", name = " + this.name + ", phone = " + this.phone + "\n" + address.toString();
    }
}
