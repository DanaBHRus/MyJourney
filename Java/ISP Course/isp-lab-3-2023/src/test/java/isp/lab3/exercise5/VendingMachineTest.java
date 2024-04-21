package isp.lab3.exercise5;

import org.junit.Test;
import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;

public class VendingMachineTest
{
    @Test
    public void displayProductsTest()
    {
        Product[] products = {new Product(2,"Baton proteic"),
                    new Product(4,"Baton ciocolata")};
        VendingMachine vendingMachine = new VendingMachine(products,0);
        String expected = "The product is Baton proteic with id: 2\nThe product is Baton ciocolata with id: 4\n";
        String actual = vendingMachine.displayProducts();
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }

    @Test
    public void insertCoinTest()
    {
        Product[] products = {new Product(2,"Baton proteic"),
                new Product(4,"Baton ciocolata")};
        VendingMachine vendingMachine = new VendingMachine(products,0);
        int expected = 100;
        int actual = vendingMachine.insertCoin(100);
        assertEquals(expected,actual);
    }

    @Test
    public void selectProductTest()
    {
        Product[] products = {new Product(2,"Baton proteic"),
                new Product(4,"Baton ciocolata")};
        VendingMachine vendingMachine = new VendingMachine(products,0);
        String expected = "Error";
        String actual = vendingMachine.selectProduct(3);
        assertArrayEquals(expected.toCharArray(), actual.toCharArray());
    }
}
