# for _ in range(5):
#     with open("names.txt", "a") as file:
#         name = input("Enter name ") 
#         file.write(f"{name}\n")

"""To read from the file that has been created 
and to manipulate the values that was read """

names = [] 

#the code below will is the code to read from a file 
with open("names.txt") as file:
    for line in file:
        names.append(line.rstrip())

#the code is the manipulation on the data in the read file   
for name in sorted(names):
    print(f"Hello   {name}")       
