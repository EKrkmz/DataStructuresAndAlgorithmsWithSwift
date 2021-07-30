import Foundation

class Queue {
    
    var list: [Int]
    
    init(head: Int) {
        list = [head]
    }
    
    //Append an element to the Queue
    func enqueue(_ element: Int) {
        list.append(element)
    }
    
    //Return the next element to be dequeued from the Queue and if the Queue is empty then return nil
    func peek() -> Int? {
        return list[0]
    }
    
    //Delete and return the next element to be dequeued
    func dequeue() -> Int? {
        return list.remove(at: 0)
    }
}

// Tests for Queue

let queue = Queue(head: 1)
queue.enqueue(2)
queue.enqueue(3)
queue.enqueue(4)
queue.enqueue(5)

print(queue.peek()!) // 1

print(queue.dequeue()!) // 1
 
print(queue.dequeue()!) // 2
print(queue.dequeue()!) // 3
print(queue.dequeue()!) // 4
print(queue.dequeue()!) // 5

queue.enqueue(6)

print(queue.dequeue()!) // 6
