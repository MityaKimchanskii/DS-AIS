
//----------------------------------------------------------------//
//-------------- Time complexity ---------------------------------//
//----------------------------------------------------------------//
//  Time complexity is a measure of the time
//  required to run an algorithm as the input size increases.

// O(1) Constant time complexity
func checkFirst(names: [String]) {
    if let first = names.first {
        print(first)
    } else {
        print("no names")
    }
}

checkFirst(names: ["Dima"])

// O(n) Linear time complexity
func printNames(names: [String]) {
    for name in names {
        print(name)
    }
}

printNames(names: ["Avva", "Boba", "Clava"])

// O(n^2) Quadratic time complexity
func printNames2(names: [String]) {
    for _ in names {
        for name in names {
            print(name)
        }
    }
}

// O(n) example
let numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450, 500, 501, 535, 777]

func naiveContains(_ value: Int, in array: [Int]) -> Bool {
    for element in array {
        if element == value {
            return true
        }
    }
    
    return false
}

// O(log n) Logarthmic time complexity
func naiveContains2(_ value: Int, in array: [Int]) -> Bool {
    guard !array.isEmpty else { return false }
    let middleIndex = array.count/2
    
    if value <= array[middleIndex] {
        for index in 0...middleIndex {
            if array[index] == value {
                return true
            }
        }
    } else {
        for index in middleIndex..<array.count {
            if array[index] == value {
                return true
            }
        }
    }
    
    return false
}

// O(n log n) Quasilinear time complexity

// ---------------------------- Example ------------------------------------------------ //
// Compare time complexity
func sumFromOne(upto n: Int) -> Int {
    var result = 0
    for i in 1...n {
        result += i
    }
    
    return result
}

sumFromOne(upto: 1000)

// and from standart swift library. The same O(n) but faster because it is compiled code
func sumFromOne2(upto n: Int) -> Int {
    (1...n).reduce(0, +)
}

sumFromOne2(upto: 1000)

// and the best option O(1)
func sumFromOne3(upto n: Int) -> Int {
    (n + 1) * n / 2
}

sumFromOne3(upto: 1000)

//----------------------------------------------------------------//
//-------------- Space complexity ---------------------------------//
//----------------------------------------------------------------//
// Space complexity is a measure of the resources required for the algorithm to run.

// Example
//Since array.sorted() will produce a brand new array with the same size of array,
//the space complexity of printSorted is O(n).
func printSorted(_ array: [Int]) {
    let sorted = array.sorted()
    
    for element in sorted {
        print(element)
    }
}

// The below algorithm only allocates memory to keep track of a few variables, so the
// space complexity is O(1). This is in contrast with the previous function, which
// allocates an entire array to create the sorted representation of the source array.
// Revise the above function
func printSorted2(_ array: [Int]) {
    
    // 1. Check for the case if the array is empty. If it is, there’s nothing to print.
    guard !array.isEmpty else { return }
    
    // 2. currentCount keeps track of the number of print statements made . minValue stores the last printed value.
    var currentCount = 0
    var minValue = Int.min
    
    //    3. The algorithm begins by printing out all values matching the minValue, and
    // updates the currentCount according to the number of print statements made.
    for value in array {
        if value == minValue {
            print(value)
            currentCount += 1
        }
    }
    
    while currentCount < array.count {
        
        // 4. Using the while loop, the algorithm finds the lowest value bigger than minValue and stores it in currentValue.
        var currentValue = array.max()!
        
        for value in array {
            if value < currentValue && value > minValue {
                currentValue = value
            }
        }
        
        // 5. The algorithm then prints all values of currentValue inside the array while updating currentCount.
        for value in array {
            if value == currentValue {
                print(value)
                currentCount += 1
            }
        }
        
        // 6. minValue is set to currentValue so the next iteration will try to find the next minimum value.
        minValue = currentValue
    }
    
    
}
