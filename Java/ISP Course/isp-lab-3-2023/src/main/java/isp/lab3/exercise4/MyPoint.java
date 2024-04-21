package isp.lab3.exercise4;

public class MyPoint
{
    private int x;
    private int y;
    private int z;

    MyPoint(){this.x=0; this.y=0; this.z=0;}
    MyPoint(int x, int y, int z)
    {
        this.x=x;
        this.y=y;
        this.z=z;
    }

    public int getX() { return x; }
    public int getY() { return y; }
    public int getZ() { return z; }

    public void setX(int x) { this.x = x; }
    public void setY(int y) { this.y = y; }
    public void setZ(int z) { this.z = z; }

    public void setXYZ(int x, int y, int z)
    {
        this.x=x;
        this.y=y;
        this.z=z;
    }

    @Override
    public String toString()
    {
        return "("+this.x+","+this.y+","+this.z+")";
    }

    public double distance(int x, int y, int z)
    {
        return Math.sqrt(Math.pow(x-this.x,2)+Math.pow(y-this.y,2)+Math.pow(z-this.z,2));
    }

    public double distance(MyPoint point)
    {
        return Math.sqrt(Math.pow(point.getX()-this.x,2)+Math.pow(point.getY()-this.y,2)+Math.pow(point.getZ()-this.z,2));
    }

}
