// Create a function that reverses a linked list. You do this by manipulating the nodes
// so that they’re linked in the other direction. For example:
// before
// 1 -> 2 -> 3 -> nil
// after
// 3 -> 2 -> 1 -> nil

// Not optimal but short O(n) time complexity and space complexity
extension LinkedList {
    mutating func reverse2() {
        // 1
        var tmpList = LinkedList<Value>()
        for value in self {
            tmpList.push(value)
        }
        // 2
        head = tmpList.head
    }
}

// Optimal O(n) time complexity and O(1) space complexity
extension LinkedList {
    mutating func reverse() {
        tail = head
        var prev = head
        var current = head?.next
        prev?.next = nil
        
        while current != nil {
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        head = prev
    }
}


example(of: "reversing a list") {
    var list = LinkedList<Int>()
    
    for i in 1...7 {
        list.append(i)
    }
    
    print("Original list: \(list)")
    list.reverse()
    print("Reversed list: \(list)")
}
