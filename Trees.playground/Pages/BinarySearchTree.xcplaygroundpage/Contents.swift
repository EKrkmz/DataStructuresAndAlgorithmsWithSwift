import Foundation

class Node {
    var value: Int
    var left: Node?
    var right: Node?
    
    init(value: Int) {
        self.value = value
    }
}

class BinarySearchTree {
    var root: Node
    
    init(value: Int) {
        self.root = Node(value: value)
    }
    
    func search(_ value: Int) -> Bool {
        return searchHelper(root, value: value)
    }
    
    // Creates a node with the given value and insert it into the binary tree
    func insert(_ value: Int) {
        insertHelper(root, value: value)
    }
    
    // Recursive search function
    func searchHelper(_ current: Node?, value: Int) -> Bool {
        if let current = current {
            if value == current.value {
                return true
            } else if value < current.value {
                return searchHelper(current.left, value: value)
            } else {
                return searchHelper(current.right, value: value)
            }
        }
        return false
    }

    // Recursive insert function
    func insertHelper(_ current: Node, value: Int) {
        if current.value < value {
            if let right = current.right {
                insertHelper(right, value: value)
            } else {
                current.right = Node(value: value)
            }
        } else {
            if let left = current.left {
                insertHelper(left, value: value)
            } else {
                current.left = Node(value: value)
            }
        }
    }
}

// Tests for Binary Search Tree

let tree = BinarySearchTree(value: 4)
tree.insert(2)
tree.insert(1)
tree.insert(3)
tree.insert(5)

print(tree.search(4)) //true
print(tree.search(6)) //false
