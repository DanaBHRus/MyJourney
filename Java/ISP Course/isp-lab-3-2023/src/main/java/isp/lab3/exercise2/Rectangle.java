package isp.lab3.exercise2;

class Rectangle
{
    private int length;
    private int width;
    private String color;

    Rectangle() {this.length=2;this.width=1;this.color="red";}
    Rectangle(int length, int width)
    {
        this.length=length;
        this.width=width;
    }
    Rectangle(int length, int width, String color)
    {
        this.length=length;
        this.width=width;
        this.color=color;
    }

    public int getLength() { return length; }
    public int getWidth() { return width; }
    public String getColor() { return color; }

    public int getPerimeter() { return 2*(this.length+this.width);}
    public int getArea() { return this.length*this.width;}
}
