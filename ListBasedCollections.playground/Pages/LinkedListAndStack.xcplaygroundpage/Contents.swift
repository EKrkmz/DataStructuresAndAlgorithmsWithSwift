import Foundation

//MARK: - LINKED LIST

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

class LinkedList {
    var head: Node?
    
    init(head: Node?) {
        self.head = head
    }
    
    //Append an element to the Linked List
    func append(_ node: Node) {
        guard head != nil else {
            head = node
            return
        }
        var current = head
        
        while let _ = current?.next {
            current = current?.next
        }
        current?.next = node
    }
    
    //Get an element from the Linked List
    func get(index: Int) -> Node? {
        guard index > 0 else {
            return nil
        }
        
        var current = head
        var counter = 1
        
        while current != nil && counter <= index {
            if counter == index {
                return current
            }
            current = current?.next
            counter += 1
        }
        return nil
    }
    
    //Delete an element from the Linked List
    func delete(value: Int) {
        var current = head
        var previous: Node?
        
        while current?.value != value && current?.next != nil {
            previous = current
            current = current?.next
        }
        
        if current?.value == value {
            if previous != nil {
                previous?.next = current?.next
            } else {
                head = current?.next
            }
        }
    }
    
    //Insert an element to the Linked List
    func insert(_ node: Node, index: Int) {
        guard index > 0 else {
            return
        }
        
        var current = head
        var counter = 1
        
        if index > 1 {
            while current != nil && counter < index {
                if counter == index - 1 {
                    node.next = current?.next
                    current?.next = node
                    break
                }
                current = current?.next
                counter += 1
            }
        } else if index == 1 {
            node.next = head
            head = node
        }
    }
}

// Tests for Linked List

let n1 = Node(value: 1)
let n2 = Node(value: 2)
let n3 = Node(value: 3)
let n4 = Node(value: 4)
let n5 = Node(value: 5)

let linkedList = LinkedList(head: n1)
linkedList.append(n2)
linkedList.append(n3)
linkedList.append(n4)

print(linkedList.get(index: 3)!.value)  // 3

linkedList.insert(n5, index: 2)
print(linkedList.get(index: 3)!.value)  // 2

linkedList.delete(value: 1)
print(linkedList.get(index: 1)!.value)  // 5


//MARK: - STACK

class Stack {
    
    var linkedList: LinkedList
    
    init(top: Node?) {
        self.linkedList = LinkedList(head: top)
    }
    
    //Append an element to the top of the Stack
    func push(_ node: Node) {
        linkedList.insert(node, index: 1)
    }
    
    //Delete and return the topmost element from the Stack
    func pop() -> Node? {
       let deletedNode = linkedList.get(index: 1)
        
        if let value = deletedNode?.value {
            linkedList.delete(value: value)
        }
        return deletedNode
    }
}

// Tests for Stack

let stack = Stack(top: n1)

stack.push(n2)
stack.push(n3)
stack.push(n4)

print(stack.pop()!.value) // 4
print(stack.pop()!.value) // 3
stack.push(n5)
print(stack.pop()!.value) // 5
