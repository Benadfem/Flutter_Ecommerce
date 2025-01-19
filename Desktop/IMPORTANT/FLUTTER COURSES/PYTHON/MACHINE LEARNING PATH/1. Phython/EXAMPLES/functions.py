"""A program that uses main function as the source function 
   this program uses other function declaration for expressing and getting its result 

   the program calculate the square of a value
"""

def main():
    x = int(input("What is the value or x? "))
    print(f"The value of x is: {x}")

    
    print(f"The Square of the value {x} is {square(x):,}")

def square(value):
    return pow(value,2)


main()