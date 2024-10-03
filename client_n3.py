

import sys
import time

def main(arg1):
    for i in range(100):
        print(f"\nClient3: {i}\n")
        time.sleep(0.1)
        print(f"Argumento 1: {arg1}\n")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: script.py <arg1>")
        sys.exit(1)
    main(sys.argv[1])
    
    
    