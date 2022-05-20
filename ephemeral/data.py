#!/usr/bin/env python

try:
    with open('/data/hello.txt', 'r') as f:
        print(f.read())
except Exception:
    print('File /data/hello.txt not found')

with open('/data/hello.txt', 'a') as f:
    print("Hello, world!", file=f)
