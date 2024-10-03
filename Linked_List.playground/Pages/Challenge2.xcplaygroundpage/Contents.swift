// Create a function that finds the middle node of a linked list. For example:
// 1 -> 2 -> 3 -> 4 -> nil
// middle is 3
// 1 -> 2 -> 3 -> nil
// middle is 2

func getMiddle<T>(_ list: LinkedList<T>) -> Node<T>? {
    var slow = list.head
    var fast = list.head
    
    while let nextFast = fast?.next {
        fast = nextFast.next
        slow = slow?.next
    }
    
    return slow
}

example(of: "getting the middle node") {
    var list = LinkedList<Int>()
    
    for i in 1...8 {
        list.append(i)
    }
    
    print(list)
    
    if let middleNode = getMiddle(list) {
        print(middleNode)
    }
}
