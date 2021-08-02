# Data Structures And Algorithms With Swift

You can find examples of data structures and algorithms with Swift in this repository. Right now there are 3 sections: 

  1. List Based Collections
  2. Searching and Sorting Algorithms
  3. Maps

## 1. List Based Collections


### Array

<img src="/images/array.jpeg">

- There is one big feature that differentiates arrays from lists: Each array has a location called an index.
- If you need to reach a certain element arrays can be used. 
- For insertion or deletion array may not be the best option. (consider using Linked List)
- If it is not the last element, so many elements have to move its place.
- The runtime of finding the length of an array in Swift is constant -> O(1).
- Swift array's "count" property keeps track of the length as elements are added and deleted. The time it takes to access this property is not effected by the size of the array.

### Linked List
<img src="/images/linkedlist.png">

- There are no built-in data structures for Linked List in Swift. However, we can build it by creating Nodes. A Node is a single unit in a linked list.
- In a linked list, we store a reference to the next element in the list. (memory address of the next element)
- Adding or removing an element is easy. We just need to change the "next" reference to point to the new object.
- Insertion takes constant time O(1) since you are just shifting around pointers and not iterating over every element in the list.

### Stack 

<img src="/images/stack.jpeg">

- I used Linked List implementation to create Stack's functionality.
- A Stack applies the last-in-first-out (LIFO) approach.
- push() method adds a node to the beginning of the linked list, pop() method removes the node at the beginning of the linked list and returns the removed node.
  
  - Because adding and removing nodes from the start point of the list takes constant time O(1), whereas adding and removing from the end of the list takes linear time O(n).

### Queue

<img src="/images/queue.png">

- We can use Swift's Arrays to build Queue data structures.
- A Queue applies the first-in-first-out (FIFO) approach.
- enqueue() means adding an element to the Queue and dequeue() means deleting and returning the first element from the Queue.
- peek() returns the next element to be dequeued comes at the beginning of the Queue. You can return the first index of the array in this case.

## 2. Searching and Sorting Algorithms

### Binary Search

<img src="/images/binarysearch.jpeg">

- Binary search searches an element from a sorted array by repeatedly dividing the array in half. 
- If the searching element is less than the element in the middle of the interval, take the lower half as the interval. 
- Take the upper half as the interval in a vice versa situation. 
- This keeps going until the searched element is found or the interval is empty.

### Bubble Sort

<img src="/images/bubblesort.jpeg">

- Bubble sort keeps swapping the near elements if they are in the wrong order. 
- Worst case happens when the array is reverse sorted: O(n*n).
- Best case happens when the array is already sorted: O(n). 
- Because bubble sort uses only a constant amount of extra space for variables like temp, swap, etc. the space complexity is: O(1). 
- Bubble sort is an in-place sorting algorithm. Therefore, it modifies elements of the original array to sort the given array.

### Merge Sort

<img src="/images/mergesort.png">

- Merge Sort is a divide and conquer algorithm. This means: it divides the given array into two halves, calls itself for the two halves (recursion), after that merges the sorted halves. 
- It repeats the whole process even if the array is already sorted. 
- Merge Sort keeps divide the array into two halves. It takes linear time to merge two halves. That's why the time complexity of this algorithm is O(n log n) for all cases (best, average, and worst). 
- Because the Merge Sort algorithm uses an extra space for the temporary array, the space complexity is O(n).

### Quick Sort

<img src="/images/quicksort.jpeg">

- Quick Sort is also a divide and conquer algorithm just like Merge Sort. 
- They both use recursion for sorting the elements. However, Quick Sort does not requires extra space, unlike Merge Sort. 
- In Quick Sort algorithm, a pivot element must be chosen. 
- The pivot element divides the array such all the elements smaller from the pivot are arranged to the left of the pivot and elements bigger than the pivot are arranged to the right of the pivot.


## 3. Maps

<img src="/images/dictionary.png">

- We can use Swift's built-in data structure Dictionary. 
- A Dictionary contains key-value pairs, it is a type of hash table.
- We can use types that conform to the Hashable protocol as keys. 
