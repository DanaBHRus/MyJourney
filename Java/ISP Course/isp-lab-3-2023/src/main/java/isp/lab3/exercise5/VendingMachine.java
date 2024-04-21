package isp.lab3.exercise5;

public class VendingMachine
{
    public Product[] products;
    public int credit;

    VendingMachine(Product[] products, int credit)
    {
        this.products=products;
        this.credit=credit;
    }

    public String displayProducts()
    {
        String array = "";
        for(Product product:products)
            array = array + product.toString() + '\n';
        return array;
    }

    public int insertCoin(int value)
    {
        credit=credit+value;
        return credit;
    }

    public String selectProduct(int id)
    {
        for(Product product:products)
            if(product.getId()==id)
                return product.getName();
        return "Error";
    }

    public void displayCredit()
    {
        System.out.println("Credit is: " + credit);
    }

    public void userMenu(VendingMachine vendingMachine)
    {
        System.out.println("You can buy: ");
        System.out.println(vendingMachine.displayProducts());
        displayCredit();
    }
}
