// Create a function that takes two sorted linked lists and merges them into a single
// sorted linked list. Your goal is to return a new linked list that contains the nodes
// from two lists in sorted order. You may assume the sort order is ascending. For
// example:
// list1
// 1 -> 4 -> 10 -> 11
// list2
// -1 -> 2 -> 3 -> 6
// merged list
// -1 -> 1 -> 2 -> 3 -> 4 -> 6 -> 10 -> 11

func mergeSorted<T: Comparable>(_ left: LinkedList<T>, _ right: LinkedList<T>) -> LinkedList<T> {
    guard !left.isEmpty else { return right }
    guard !right.isEmpty else { return left }
    
    var newHead: Node<T>?
    var tail: Node<T>?
    
    var currentLeft = left.head
    var currentRight = right.head
    
    if let leftNode = currentLeft, let rightNode = currentRight {
        if leftNode.value < rightNode.value {
            newHead = leftNode
            currentLeft = leftNode.next
        } else {
            newHead = rightNode
            currentRight = rightNode.next
        }
        tail = newHead
    }
    
    while let leftNode = currentLeft, let rightNode = currentRight {
        if leftNode.value < rightNode.value {
            tail?.next = leftNode
            currentLeft = leftNode.next
        } else {
            tail?.next = rightNode
            currentRight = rightNode.next
        }
        tail = tail?.next
    }
    
    if let leftNodes = currentLeft {
        tail?.next = leftNodes
    }
    
    if let rightNodes = currentRight {
        tail?.next = rightNodes
    }
    
    var list = LinkedList<T>()
    list.head = newHead
    list.tail = {
        while let next = tail?.next {
            tail = next
        }
        return tail
    }()
    
    return list
}

example(of: "merging two lists") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    var list2 = LinkedList<Int>()
    list2.append(5)
    list2.append(6)
    list2.append(7)
    
    print("First list: \(list)")
    print("Second list: \(list2)")
    
    let mergedList = mergeSorted(list, list2)
    print("MergedList: \(mergedList)")
    
}
