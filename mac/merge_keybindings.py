import json
import sys


def get_bindings(file):
    with open(file) as f:
        bindings = json.loads('\n'.join([line for line in f.readlines() if not line.startswith('//')]))

    return bindings
    

def get_key_map(bindings):
    return {b['key']: b['command'] for b in bindings}

def get_cmd_map(bindings):
    return {b['command']: b['key'] for b in bindings}

def main():

    b1 = get_bindings(sys.argv[1])
    b2 = get_bindings(sys.argv[2])

    k1 = get_key_map(b1)
    k2 = get_key_map(b2)
    # breakpoint()
    for key, cmd in k1.items():
        print(key, cmd)
        print(k2.get(key, 0))
        if key in k2 and cmd != k2[key]:
            print(f"conflict: {key}={cmd} : {key}={k2[key]}")
    
    
            

    

if __name__ == "__main__":
    main()