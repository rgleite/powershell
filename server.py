

import sys

def main(arg1):
    print(f"SERVER: {arg1}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: script.py <arg1>")
        sys.exit(1)
    main(sys.argv[1])