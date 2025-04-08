"""write program that performs division"""
# try:
#     divide = 2/0

# except ZeroDivisionError:
#     print("There is an error")
# else:
#     print(divide)

"""the user will be asked to input the values """
while True:
    try:
        num1 = int(input("Enter the frist number "))
        num2 = int(input("Enter the second number "))
        divide = num1 / num2
    except ZeroDivisionError:
        # print("You can't perform a division on Zero number")
        continue
    except ValueError: 
        # print("Enter an integer or a float number")
        pass
    # # except:
    #     print("Your code cannot run becuase it has errors")
    else:
        print(f"The answer is: {divide}")
        
    resp = input("Do you want to try again? type Y for yes and type N for no ")
    if resp.upper() == "N":
        break
    
