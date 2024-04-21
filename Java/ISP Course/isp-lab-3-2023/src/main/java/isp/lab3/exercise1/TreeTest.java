package isp.lab3.exercise1;

class TreeTest
{
    public static void main(String[] args)
    {
        Tree tree=new Tree();
        System.out.println("Height with " + 10 +  " meters is " + tree.grow(10));
        System.out.println(tree.toString());
    }
}
