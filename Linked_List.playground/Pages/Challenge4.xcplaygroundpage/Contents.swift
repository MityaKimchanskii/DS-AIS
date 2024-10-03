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

func mergeSorted<T>(_ linkedList: LinkedList<T>?) {
    guard !left.isEmpty else { return }
    guard !right.isEmpty else { return }
    
    var newHead: Node<T>?
    var tail: Node<T>?
}
