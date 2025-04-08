"""You declared a function and you did not call the function 
    how come you were able to run the code if the function created was not called """
# def multiplication(a,b):
#     a = int(input("Enter the value of a: "))
#     b = int(input("Enter the value of b: "))
#     c = a*b
#     return(f"{a} x {b} = {c}")
# print(multiplication(12,7))

"""correction to the assignment"""
from time import sleep
def main():
    num = int(input("Enter your multiplication number "))
    multiplication(num)
    

def multiplication(num):
    for index in range(1,12+1):
        print(f"{num} x {index} = {num * index}")
        sleep(1)
        
main()