"""You declared a function and you did not call the function 
    how come you were able to run the code if the function created was not called """
# def greet(lang):
#     lang = input(f"Please enter your prefered language: ")
#     if lang == 'eng':
#         return(f"Hello user, good day, how are you doing today")
#     elif lang == "yor":
#         return(f"eku ojumo, se dada la ba yin")
#     elif lang == "igbo":
#         return(f"kedu, odin ma")
#     elif lang == "hausa":
#         return(f"sonu lafia")
#     else:
#         return(f"uknown language")




"""here is the correction to the your code """

def greet(lang):
  
    if lang == 'eng':
        return(f"Hello user, good day, how are you doing today")
    elif lang == "yor":
        return(f"eku ojumo, se dada la ba yin")
    elif lang == "igbo":
        return(f"kedu, odin ma")
    elif lang == "hausa":
        return(f"sonu lafia")
    else:
        return(f"uknown language")
    
# the invocation of your code 
lang = input(f"Please enter your prefered language: ")# you made the lang is now a global variable 
print(greet(lang))


"""And here is my approach to the problem."""
def main():
    print("Enter eng for ENGLISH, \nEnter yor for YORUBA \nEnter igbo for IGBO \nEnter hausa for HAUSA\n")
    lang= input("Enter your preferred language ")
    print(greet(lang))
    
    
def greet(lang):
    if lang == 'eng':
        return(f"Hello user, good day, how are you doing today")
    elif lang == "yor":
        return(f"eku ojumo, se dada la ba yin")
    elif lang == "igbo":
        return(f"kedu, odin ma")
    elif lang == "hausa":
        return(f"sonu lafia")
    else:
        return(f"uknown language")
    



main()
