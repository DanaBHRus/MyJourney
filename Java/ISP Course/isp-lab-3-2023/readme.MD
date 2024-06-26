# height

## Exercise 1

A class Tree contains:
- One instance variable 'height' (of type int) representing the height of tree;
- One default constructor which initialize the height to 15;
- One grow(int meters) method which add to the current height the meters given as long as meters >= 1;
- One toString() method which returns the height of the tree;
   
1. Write a class which models the class Tree. 
2. Write a class TreeTest which test the Tree class. You have to write three tests:
    * for grow(int meters) method
    * for toString() method
3. Create a tree object and call all his methods and print out the values(in main)

## Exercise 2

A class called Rectangle contains:
- Three private instance variables: length (of type int), width(of type int) and color (of type String), with default value of 2, 1 and “red”, respectively.
- One overloaded constructor which sets the length and the width;
- One overloaded constructor which sets the length, the width and the colors;
- Five public methods: getLength(), getWidth(), getColor(), getPerimeter() and getArea().

1. Write a class which models the class Rectangle.
2. Create a rectangle object, call all his methods and print out the values(in main)


## Exercise 3 

A class called Vehicle contains:
- Four private instance variables: model (String), type (String), speed (int) and fuelType (char of either 'D' or 'B');
- One constructor to initialize the attributes;
    * There is no default constructor
- Public getters/setters for all attribtes; 
  A toString() method that returns “{mode} ({type}) speed {teem} ”, e.g., “Dacia (Logan) speed 150 fuel type B”.

1. Write the Vehicle class.
2. Create two Vehicle object and test getter and setter methods (in main).
3. Compare and test if the two objects created in step before are equals (using public boolean equals(Object o) method).
4. Use a static atribute in Vehicle class to test number of Vehicle objects created. Add static method in Vehicle class which display number of objects created of type Vehile.
5. Write a test class (called VehicleTest) to test toString() method.

## Exercise 4

A class called MyPoint, which models a 3D point with x, y and z coordinates contains:
- Three instance variables x (int), y (int) and z(int).
- A “no-argument” (or “no-arg”) constructor that construct a point at (0, 0, 0).
- A constructor that constructs a point with the given x, y and z coordinates.
- Getter and setter for the instance variables x, y and z.
- A method setXYZ(int x, int y, int z) to set all  x, y and z.
- A toString() method that returns a string description of the instance in the format “(x, y, z)”.
- A method called distance(int x, int y, int z) that returns the distance from this point to another point at the given (x, y, z) coordinates.
- An overloaded distance(MyPoint another) that returns the distance from this point to the given MyPoint instance another.

1. Write the code for the class MyPoint.
2. Write a test class (called MyPointTest) to test distance(...) method.
3. Create two point objects, calculate and display distance between them (in main). 

# Exercise 5 

A class VendingMachine contains:
- A method displayProducts() - display available products and corresponding selection id; 
- A method insertCoin(int value) - add coins to current vending machine credit;
- A method String selectProduct(int id) - return a String representing name of the selected product or an error message; 
- A method displayCredit - display current available credit; 
- A method userMenu() - provide a text based menu for interacting with vending machine. 

1. Write the code for VendingMachine. Consider adding any additional methods and attributes (if required) to implement the vending machine behaviour.
2. Write a test class (called VendingMachineTest) to test methods: displayProducts, insertCoin, selectProduct.
3. Create a vending machine object and test it in main.

# Exercise 6 

Create a new version of VendingMachine and transform the class in a singleton. References:
- https://sourcemaking.com/design_patterns/singleton 
- https://sourcemaking.com/design_patterns/singleton/java/2 
