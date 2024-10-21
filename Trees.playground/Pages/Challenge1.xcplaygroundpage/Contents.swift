//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func printEachLevel<T>(for tree: TreeNode<T>) {
    
    var queue = Queue<TreeNode<T>>()
    var nodeLeftInCurrentLevel = 0
    queue.enqueue(tree)
    
    
    while !queue.isEmpty {
        
        nodeLeftInCurrentLevel = queue.count
        
        while nodeLeftInCurrentLevel > 0 {
            guard let node = queue.dequeue() else { break }
            print("\(node.value) ", terminator: "")
            node.children.forEach { queue.enqueue($0) }
            nodeLeftInCurrentLevel -= 1
        }
        
        print()
    }
}

let tree = TreeNode(15)

let one = TreeNode(1)
tree.add(one)
let seveteen = TreeNode(17)
tree.add(seveteen)
let twenty = TreeNode(20)
tree.add(twenty)

let one2 = TreeNode(1)
let five = TreeNode(5)
let zero = TreeNode(0)
one.add(one2)
one.add(five)
one.add(zero)

let two = TreeNode(2)
seveteen.add(two)

let five2 = TreeNode(5)
let seven = TreeNode(7)
twenty.add(five2)
twenty.add(seven)

printEachLevel(for: tree)



