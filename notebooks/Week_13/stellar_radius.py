#!/usr/bin/env python
import numpy as np
import sys

def stellar_radius(mass):
   starR=mass**0.8
   return starR

if __name__ == "__main__":
   print stellar_radius(float(sys.argv[1])) #mass
