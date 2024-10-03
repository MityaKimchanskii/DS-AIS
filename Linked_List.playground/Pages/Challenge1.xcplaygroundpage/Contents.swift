// Create a function that prints the nodes of a linked list in reverse order. For example:
// 1 -> 2 -> 3 -> nil
// should print out the following:
// 3
// 2
// 1

private func printInReverse<T>(_ node: Node<T>?) {
    guard let node = node else { return }
    
    printInReverse(node.next)
    print(node.value)
}

func printInReverse<T>(_ list: LinkedList<T>) {
    printInReverse(list.head)
}

example(of: "printing in reverse") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("Original list: \(list)")
    print("Printing in reverse: ")
    printInReverse(list)
}
