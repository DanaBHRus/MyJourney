package isp.lab3.exercise1;

class Tree {
    int height; ///height of tree

    Tree() {
        this.height = 15;
    }

    public int grow(int meters) {
        if (meters >= 1)
            return this.height + meters;
        else return this.height;
    }

    @Override
    public String toString() {
        return "Height is: " + this.height;
    }
}
