import numpy as np
from npystring_cython import checks

def test_npystring_api():

    arr = np.array(['a', 'b', 'c'], dtype='T')
    assert checks.npystring_allocation(arr) == 0
    assert arr[-1] == "Hello!"
