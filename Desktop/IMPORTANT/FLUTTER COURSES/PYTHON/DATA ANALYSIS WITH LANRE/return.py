"""A simple arithmetic calculator"""
def calculate(a,b):
    c= a + b
    # print(c)
    return c

a = int(input("Enter a "))
b = int(input("Enter b "))

answer= calculate(a,b)
print()
# subtract the answer from the value you want to input 
value = int(input("Ente the value "))
result = value - answer
print(result)

