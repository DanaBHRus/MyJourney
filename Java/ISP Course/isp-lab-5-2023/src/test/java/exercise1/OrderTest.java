package exercise1;

import isp.lab4.exercise1.Order;
import isp.lab4.exercise1.ProductCategory;
import org.junit.Test;

import java.time.LocalDateTime;

import static org.junit.Assert.assertArrayEquals;

public class OrderTest {
    @Test
    public void toStringTest() {
        LocalDateTime localDateTime = LocalDateTime.now();
        Order order = new Order("10", localDateTime, 18.8);
        order.addAProduct("11", "Mere", 2.3, ProductCategory.HOME_AND_GARDEN);
        order.addAProduct("7", "Pudra", 16.5, ProductCategory.BEAUTY);
        String expected = "Order: orderId = 10, date = " + localDateTime + ", totalPrice = 18.8\nProduct: productId = 11, name = Mere, price = 2.3, productCategory = Home & Garden\nProduct: productId = 7, name = Pudra, price = 16.5, productCategory = Beauty\n";
        String actual = order.toString();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }
}
