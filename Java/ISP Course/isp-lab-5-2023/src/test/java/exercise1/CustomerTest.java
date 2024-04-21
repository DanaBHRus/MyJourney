package exercise1;

import isp.lab4.exercise1.Address;
import isp.lab4.exercise1.Customer;
import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;

public class CustomerTest {
    @Test
    public void toStringTest() {
        Customer customer = new Customer("123", "George", "0754301243", new Address("Ciucas", "Cluj"));
        String expected = "Customer: customerId = 123, name = George, phone = 0754301243\nAdress: street = Ciucas, city = Cluj";
        String actual = customer.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }
}
