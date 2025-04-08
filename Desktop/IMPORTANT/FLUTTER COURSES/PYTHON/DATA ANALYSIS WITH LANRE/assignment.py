#    [3]
                                
# A short code that greets a user in the user's prefered language.

def greet(lang):
    lang = input("Enter your preferred language: ")
    if lang == "english":
        print(f"Hello user, good day, how are you doing today?")
    elif lang == "yoruba":
        print(f"Eku ojumo, se dada la ba yin?")
    elif lang == "igbo":
        print(f"Kedu, odin ma")
    elif lang == "hausa":
        print(f"Sonu lafia")
    else:
        print(f"This is an unrecognized language")



#    [2]

# A code that helps user to multiply two numbers and bring out the output.


def multiplication(a,b):
    c = a*b
    print(f"{a} x {b} = {c}")
a = int(input("Enter the value of a: "))
b = int(input("Enter the value of b: "))







#   [1]

# THIS IS FOR THE FIRST QUESTION

names = ["Gabriel", "Bright", "Rasaq", "Benson", "Akinyemi", "Rapheal", "Basit"]

names[0]
names[1]
names[2]
names[3]
names[4]
names[5]
names[6]


# THIS IS FOR THE SECOND QUESTION

names = ["Gabriel", "Bright", "Rasaq", "Benson", "Akinyemi", "Rapheal", "Basit"]




for names in names:
    print(f" Hello {names}, how are you doing today?" )




def greet(lang):
    lang = input("Enter your preferred language: ")
    if lang == "english":
        print(f"Hello user, good day, how are you doing today?")
    elif lang == "yoruba":
        print(f"Eku ojumo, se dada la ba yin?")
    elif lang == "igbo":
        print(f"Kedu, odin ma")
    elif lang == "hausa":
        print(f"Sonu lafia")
    else:
        print(f"This is an unrecognized language")