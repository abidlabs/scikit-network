# distutils: language = c++
# cython: language_level=3
"""
Created on Jun 3, 2020
@author: Julien Simonnet <julien.simonnet@etu.upmc.fr>
@author: Yohann Robert <yohann.robert@etu.upmc.fr>
"""
from libcpp.vector cimport vector

cdef inline int parent(int i):
    return (i - 1) // 2

cdef inline int left(int i):
    return 2 * i + 1

cdef inline int right(int i):
    return 2 * i + 2

cdef class MinHeap:

    cdef vector[int] arr, pos
    cdef int size

    cdef int pop_min(self, int[:] degrees)
    cdef bint empty(self)
    cdef void swap(self, int x, int y)
    cdef void insert_key(self, int k, int[:] degrees)
    cdef void decrease_key(self, int i, int[:] degrees)
    cdef void min_heapify(self, int i, int[:] degrees)
