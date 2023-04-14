import json
import sys

def main():
    with open(sys.argv[1]) as f:
        bindings = json.loads('\n'.join([line for line in f.readlines() if not line.startswith('//')]))
    bindings = sorted(bindings, key=lambda obj: obj['command'])



    with open(sys.argv[1], 'w') as f:
        f.write(json.dumps(bindings))
    
    # print(json.dumps(bindings))


if __name__ == "__main__":
    main()