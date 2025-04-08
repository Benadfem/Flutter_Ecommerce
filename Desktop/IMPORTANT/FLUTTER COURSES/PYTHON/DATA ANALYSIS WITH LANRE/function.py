"""a program to get the square of a number 
    find the hypothenus of a triange using the 
    fomular 0.5*(a**2 + b**2)""" 
import implement

def main():
    
    a = int(input("Enter the value of a: "))
    b = int(input("Enter the value of b: "))

    c =  addition(square(a), square(b)) **0.5
    print(f"The Hypotenus of the triangle is {int(c)}")
    
    name = input("What's your name? ")
    implement.regards(name)
    
  
    
    

def square(x):
    square = x**2
    return square

def addition(value1, value2):
    return value1 + value2

# def square_root(x):
#     root = addition **0.5
#     return root



main()