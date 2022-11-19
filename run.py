#!/usr/bin/env python

import sys
import json

def main(targets=['test']):
    
    # implement data target (get data)
    if 'data' in targets:
        # TODO: load data
        print('reached data target')
        
    if 'test' in targets:
        # TODO: implement test target
        print('reached test target')

if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)