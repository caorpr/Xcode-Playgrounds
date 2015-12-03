//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


public class PopupController
{
    private PopupDisplay myPopups;
    private Thing myThing;
    
    
    public PopupController()
    {
        myPopups = new PopupDisplay();
    }
    
    
    
    public void start()
    {
    String name = myPopups.getAnswer("Type in your name: ");
    
    myPopups.displayResponse("Your name is: " + name);
    int age;
    String tempAge = myPopups.getAnswer("Type in your age");
    
    while(!isInteger(tempAge))
    {
    tempAge = myPopups.getAnswer("Type in an integer value!");
    }
    
    if(isInteger(tempAge))
    {
    age = Integer.parseInt(tempAge);
    }
    else
    {
    age = -12345678;
    }
    
    myPopups.displayResponse("You typed in " + age);
    
    
    double weight;
    String tempWeight = myPopups.getAnswer("Type in your weight (lbs.): ");
    while(!isDouble(tempWeight))
    {
    tempWeight = myPopups.getAnswer("give me a valid double!");
    }
    
    if(isDouble(tempWeight))
    {
    weight = Double.parseDouble(tempWeight);
    }
    else
    {
    weight = -9999990;
    }
    
    myPopups.displayResponse("You typed in: " + weight);
    
    myThing = new Thing(name, age, weight);
    
    myPopups.displayResponse(myThing.toString());
    }
    
    private boolean isInteger(String input)
    {
    boolean isInt = false;
    
    try
    {
    int validInteger = Integer.parseInt(input);
    isInt = true;
    }
    catch(NumberFormatException error)
    {
    myPopups.displayResponse("ERROR");
    }
    
    return isInt;
    }
    
    private boolean isDouble(String input)
    {
    boolean isDouble = false;
    
    try
    {
    double validDouble = Double.parseDouble(input);
    isDouble = true;
    }
    catch(NumberFormatException error)
    {
    myPopups.displayResponse("You typed wrong.");
    }
    return isDouble;
    
    }
}


public class PopupRunner
{
    public static void main (String [] args)
    {
    PopupController myPopupController = new PopupController();
    myPopupController.start();
    }
}



public class PopupDisplay
{
    public String getAnswer(String input)
    {
    String answer = "";
    
    answer = JOptionPane.showInputDialog(null, input);
    
    return answer;
    }
    
    
    public void displayResponse(String input)
    {
    JOptionPane.showMessageDialog(null, input);
    }
}



public class Thing
{
    private String name;
    private int age;
    private double weight;
    

    public Thing()
    {
    age = -99;
    weight = -.00005;
    name = "";
    }
    

    public Thing(String name, int age, double weight)
    {
    this.age = age;
    this.name = name;
    this.weight = weight;
    }
    
    
    
    
    public String getName()
    {
    return name;
    }
    
    public int getAge()
    {
    return age;
    }
    
    public double getWeight()
    {
    return weight;
    }
    
    
    
    
    public void setName(String name)
    {
    this.name = name;
    }
    
    public void setAge(int age)
    {
    this.age = age;
    }
    
    public void setWeight(double weight)
    {
    this.weight = weight;
    }
    
    
    public String toString()
    {
    String thingInfo = name + " is " + age + " years old, and weighs " + weight + " lbs.";
    
    return thingInfo;
    }
}



