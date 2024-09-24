
let array: [Int] = [1,2,3,5,6,7]

func printReverse<T>(_ array: [T]) {
    var stack = Stack<T>()
    
    for value in array {
        stack.push(value)
    }
    
    while let value = stack.pop() {
        print(value)
    }
}

printReverse(array)
