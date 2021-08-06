import UIKit

class Node {
    var value: Int
    var left: Node?
    var right: Node?

    init(value: Int) {
        self.value = value
    }
}

class BinaryTree {
    
    var root: Node
    
    init(rootValue: Int) {
        self.root = Node(value: rootValue)
    }
    
    // Returns true if the value is in the tree, otherwise return false
    func search(_ value: Int) -> Bool {
        return preorderSearch(root, value: value)
    }
    
    // Returns a String that contains all the nodes
    func printTree() -> String {
        let result = preorderPrint(root, traverse: "")!
        return String(result[..<result.index(before: result.endIndex)])
    }
    
    // Creates a recursive search solution
    func preorderSearch(_ start: Node?, value: Int) -> Bool {
        if let start = start {
             if start.value == value {
                 return true
             } else {
                 return preorderSearch(start.left, value: value) || preorderSearch(start.right, value: value)
             }
         }
         return false
    }
    
    // String representation for the preordered nodes
    func preorderPrint(_ start: Node?, traverse: String) -> String? {
        var result = traverse
        if let start = start {
            result += "\(start.value)-"
            if let newValue = preorderPrint(start.left, traverse: result) {
                result = newValue
            }
            if let newValue = preorderPrint(start.right, traverse: result) {
                result = newValue
            }
        }
        return result
    }
}

// Tests for Binary Tree Preorder Traversal

let tree = BinaryTree(rootValue: 1)
tree.root.left = Node(value: 2)
tree.root.right = Node(value: 3)
tree.root.left?.left = Node(value: 4)
tree.root.left?.right = Node(value: 5)

print(tree.search(4)) //true
print(tree.search(6)) //false

print(tree.printTree()) //1-2-4-5-3
