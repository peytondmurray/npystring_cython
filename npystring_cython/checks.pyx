cimport numpy as cnp
cnp.import_array()


def npystring_allocation(cnp.ndarray[str] arr):

    cdef char *string = "Hello!"
    cdef size_t size = 6

    with cnp.NpyStringLock(arr.dtype.descr) as allocator:

        # copy string->packed_string, the pointer to the underlying array buffer
        if cnp.NpyString_pack(
            allocator,
            <cnp.npy_packed_static_string *>arr.data,
            string,
            size,
        ) == -1:
            # string packing failed, set error
            return -1

    return 0
