
example(of: "using stack") {
    var stack = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    stack.push(5)
    
    print(stack)
    
    if let popedElement = stack.pop() {
        assert(5 == popedElement)
        print("Popped: \(popedElement)")
    }
}

example(of: "initializing a stack from an array") {
    let array = ["A", "B", "C", "D"]
    var stack = Stack(array)
    print(stack)
    stack.pop()
}

example(of: "initializing a stack from an array literal") {
    var stack: Stack = [1.0, 3.0, 5.0, 6.0, 7.0]
    print(stack)
    stack.pop()
}


