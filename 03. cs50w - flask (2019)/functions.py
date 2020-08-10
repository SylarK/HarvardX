def square(x):
    return x * x

def main():
    for i in range (10):
        print(f"{i} squared is {square(i)}")
        print("{} squared is {}".format(i, square(i)))

if __name__ == "__main__":
    main()
