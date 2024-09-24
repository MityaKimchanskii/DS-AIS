// The stack data structure is identical, in concept, to a physical stack of objects.

// There are only two essential operations for a stack:
// • push: Adding an element to the top of the stack.
// • pop: Removing the top element of the stack.

// In computer science, a stack is
// known as a LIFO (last-in-first-out) data structure. Elements that are pushed in last
// are the first ones to be popped out.

// • iOS uses the navigation stack to push and pop view controllers into and out of view.
// • Memory allocation uses stacks at the architectural level. Memory for local
//   variables is also managed using a stack.

public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init() {}
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
    
    public init(_ elements: [Element]) {
        storage = elements
    }
}

// 1. Creating an array that maps the elements to String via storage.map { "\
//    ($0)" }.
// 2. Creating a new array that reverses the previous array using reversed().
// 3. Flattening out the array into a string by using joined(separator:). You
//    separate the elements of the array using the newline character "\n".
extension Stack: CustomDebugStringConvertible {
    public var debugDescription: String {
        """
        --- top ---
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        -----------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

public func example(of description: String, action: () -> ()) {
    print("---Example of \(description)---")
    action()
    print()
}
