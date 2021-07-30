import Foundation

// First example

var dictionary = [Int : String]()

dictionary[1] = "E"
dictionary[2] = "l"
dictionary[3] = "i"
dictionary[4] = "f"

print(dictionary) //unordered

for i in 1...4 {
    print(dictionary[i]!)  //ordered
}


// Second example

var numberOfCharacters: [String : [Int]] = [:]
numberOfCharacters["Elif"] = [4]
numberOfCharacters["Elif Korkmaz"] = [4,7]

print(numberOfCharacters)


// Third example

var dict1 = [5:6]
var dict2 = ["key":"value"]
print(dict1)
print(dict2)
