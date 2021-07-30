import Foundation

func bubbleSort(array: [Int]) -> [Int] {
    
    var array = array
    
    for i in 0..<array.count {
        
      for j in 1..<array.count - i {
        
        if array[j] < array[j-1] {
          let temp = array[j-1]
          array[j-1] = array[j]
          array[j] = temp
        }
        
      }
    }
    return array
}

// Test for Bubble Sort

let list = [5, 0, 67, 44, 24, 85]
let sortedList = bubbleSort(array: list)
print(sortedList)
