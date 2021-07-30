import Foundation

func quickSort<T: Comparable>(_ a: [T]) -> [T] {
    
    guard a.count > 1 else {
        return a
    }
    
    let pivot = a[a.count / 2]
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}

// Test for Quick Sort

let array = [8, -6, 24, 97, 5, 44, 9]
let sortedArray = quickSort(array)
print(sortedArray)

