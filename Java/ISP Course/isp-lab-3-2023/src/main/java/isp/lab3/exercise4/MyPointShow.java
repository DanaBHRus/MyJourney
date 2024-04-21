package isp.lab3.exercise4;

public class MyPointShow
{
    public static void main(String[] args)
    {
        MyPoint point1=new MyPoint(2,3,2);
        MyPoint point2=new MyPoint(1,1,1);
        System.out.println("Distance between " + point1.toString() + " and " + point2.toString() + " is: " + point1.distance(point2));
    }
}
