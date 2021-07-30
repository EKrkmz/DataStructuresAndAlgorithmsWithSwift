import Foundation

func mergeSort(unorderedArray: [Int]) -> [Int] {
    
    guard unorderedArray.count > 1 else {
        return unorderedArray
    }
 
    let middle = unorderedArray.count / 2
    let left = mergeSort(unorderedArray: Array(unorderedArray[0..<middle]))
    let right = mergeSort(unorderedArray: Array(unorderedArray[middle..<unorderedArray.count]))
 
    return merge(leftSide: left, rightSide: right)
}

func merge(leftSide: [Int], rightSide: [Int]) -> [Int] {
    
    var leftIndex = 0
    var rightIndex = 0
 
    var orderedArray = [Int]()
 
    while leftIndex < leftSide.count && rightIndex < rightSide.count {
        
        if leftSide[leftIndex] < rightSide[rightIndex] {
            orderedArray.append(leftSide[leftIndex])
            leftIndex += 1
        } else if leftSide[leftIndex] > rightSide[rightIndex] {
            orderedArray.append(rightSide[rightIndex])
            rightIndex += 1
        } else {
            
            orderedArray.append(leftSide[leftIndex])
            leftIndex += 1
            orderedArray.append(rightSide[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftSide.count {
        orderedArray.append(leftSide[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightSide.count {
        orderedArray.append(rightSide[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

// Test for Merge Sort

let array = [5,9,3,65,12,8,0,4]
let orderedArray = mergeSort(unorderedArray: array)
print(orderedArray)
