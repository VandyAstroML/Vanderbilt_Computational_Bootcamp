#! /usr/bin/env python

# NAME
# DATE
# Vanderbilt University
from __future__ import print_function, division, absolute_import
__author__     =['YOUR NAME']
__copyright__  =["Copyright 2017 YOUR NAME, Name of Project"]
__email__      =['Email Address']
__maintainer__ =['Your Name']

__all__=["fibonacci"]

from math import sqrt


 
#----------------------------------------------------------------------
def fibonacci(n):
    """
    http://stackoverflow.com/questions/494594/how-to-write-the-fibonacci-sequence-in-python
    """
    return ((1+sqrt(5))**n-(1-sqrt(5))**n)/(2**n*sqrt(5))