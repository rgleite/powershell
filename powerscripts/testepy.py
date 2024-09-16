import sys

def main(arg1, arg2):
    print(f"Argumento 1: {arg1}")
    print(f"Argumento 2: {arg2}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Uso: script.py <arg1> <arg2>")
        sys.exit(1)
    main(sys.argv[1], sys.argv[2])