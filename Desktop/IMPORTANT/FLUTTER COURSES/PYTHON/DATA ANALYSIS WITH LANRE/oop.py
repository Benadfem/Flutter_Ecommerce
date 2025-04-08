#create the class Car
class Vehicle:
    #creating the constructor of the class Car
    def __init__(self,brand):
        #initializing the attributes of the class through the constructor 
      
        self.brand = brand
        # print(f"The brand name is: {self.brand} \nIt has {self.tyre} tyres \nIt has {self.gear} Gear selector ")
#create an object of a class 
    def move(self):
        print("i can move")
    
    def horn(self):
        print("i can make a horn")
v1 = Vehicle(brand= "Toyota Camry")
print(f"The brand of the car is: {v1.brand}")
print(v1.horn())
print()
v2 = Vehicle( brand = "Volvo ")
print("the numbers of tyre for the vehicle is ",v2.tyre)
print(v2.move())

"""INHERITANCE """

class Train(Vehicle):
    pass

class Car(Vehicle):
    pass

class Plane(Vehicle):
    pass