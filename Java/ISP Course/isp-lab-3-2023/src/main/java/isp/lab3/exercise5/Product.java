package isp.lab3.exercise5;

public class Product
{
    public static int numberOfProducts=0;
    private int id;
    private String name;

    public Product(int id, String name)
    {
        this.id=id;
        this.name=name;
        numberOfProducts++;
    }

    public int getId() { return id; }
    public String getName() { return name; }

    @Override
    public String toString()
    {
        return "The product is " + this.name + " with id: " + this.id;
    }

    protected void finalize(Product product) throws Throwable
    {
        product.finalize();
        numberOfProducts--;
    }
}
