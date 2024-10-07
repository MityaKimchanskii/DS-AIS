// Create a function that removes all occurrences of a specific element from a linked
// list. The implementation is similar to the remove(at:) method you implemented for
// the linked list. For example:
// original list
// 1 -> 3 -> 3 -> 3 -> 4
// list after removing all occurrences of 3
// 1 -> 4

extension LinkedList where Value: Equatable {
    
    mutating func removeAll(_ value: Value) {
        
        while let head = self.head, head.value == value {
            self.head = head.next
        }
        
        var prev = head
        var current = head?.next
        
        while let currentNode = current {
            if currentNode.next == nil {
                tail
            }
            
            guard currentNode.value != value else {
                prev?.next = currentNode.next
                current = prev?.next
                continue
            }
            
            prev = current
            current = current?.next
        }
        tail = prev
    }
}

example(of: "deleting all occurences of a specific element") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(2)
    list.push(2)
    list.push(1)
    list.push(1)
    
    print("Before deleteng 2 from the linked list: \(list)")
    
    list.removeAll(2)
    print("After deleting 2 from the linked list \(list)")
}
