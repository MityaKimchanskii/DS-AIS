import UIKit

var greeting = "Hello, playground"

var tree: BinaryNode<Int> = {
    let zero = BinaryNode(value: 0)
    let one = BinaryNode(value: 1)
    let five = BinaryNode(value: 5)
    let seven = BinaryNode(value: 7)
    let eight = BinaryNode(value: 8)
    let nine = BinaryNode(value: 9)
    
    seven.leftChild = one
    one.leftChild = zero
    one.rightChild = five
    seven.rightChild = nine
    nine.leftChild = eight
    
    return seven
}()

example(of: "tree diagram") {
    print(tree)
}

example(of: "in order traversal") {
    tree.traverseInOrder { print($0) }
}

//example(of: "pre order traversal") {
//    tree.traversePreOrder { print($0) }
//}

example(of: "post order traversal") {
    tree.traversePostOrder { print($0) }
}

// Challenge 1 - find the height of the tree
func height<T>(of node: BinaryNode<T>?) -> Int {
    guard let node else { return -1 }
    return 1 + max(height(of: node.leftChild), height(of: node.rightChild))
}

height(of: tree)

// Challenge 2 - serialize or deserialize tree
extension BinaryNode {
    public func traversePreOrder(visit: (Element?) -> ()) {
        visit(value)
        
        if let leftChild = leftChild {
            leftChild.traversePreOrder(visit: visit)
        } else {
            visit(nil)
        }
        
        if let rightChild = rightChild {
            rightChild.traversePreOrder(visit: visit)
        } else {
            visit(nil)
        }
    }
}

func serialize<T>(_ node: BinaryNode<T>) -> [T?] {
    var array: [T?] = []
    node.traversePreOrder { array.append($0) }
    return array
}

func deserialize<T>(_ array: [T?]) -> BinaryNode<T>? {
    var reversed = Array(array.reversed())
    return deserialize(&reversed)
}

func deserialize<T>(_ array: inout [T?]) -> BinaryNode<T>? {
    guard !array.isEmpty, let value = array.removeLast() else { return nil }
    let node = BinaryNode(value: value)
    node.leftChild = deserialize(&array)
    node.rightChild = deserialize(&array)
    return node
}

var array = serialize(tree)
print(array)
let node = deserialize(&array)
let node2 = deserialize(array)
print(node!)


