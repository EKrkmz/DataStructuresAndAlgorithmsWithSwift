import Foundation

func binarySearch(_ array: [Int], value: Int) -> Int? {
    var firstIndex = 0
    var lastIndex = array.count - 1
    
    while firstIndex <= lastIndex {
        let middleIndex = (firstIndex + lastIndex) / 2
        
        if array[middleIndex] == value {
            return middleIndex
        } else if array[middleIndex] < value {
            firstIndex = middleIndex + 1
        } else {
            lastIndex = middleIndex - 1
        }
    }
    return nil
}

// Test for Binary Search

let list = [1, 3, 7, 9, 15, 19, 24, 32]
let v1 = 2
let v2 = 24
print(binarySearch(list, value: v1)) // nil
print(binarySearch(list, value: v2)!) // 6
