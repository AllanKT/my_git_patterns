from collections import defaultdict
from math import pi

from functools import cache, cached_property, lru_cache, singledispatch, singledispatchmethod, wraps



def simple_func_1(number: int) -> int:
    """
    >>> simple_func(int)
    int
    """
    print("number")
    return number


def simple_func_2():
    if 1:
        return 1
    elif 2:
        return 2
    else:
        return 3
