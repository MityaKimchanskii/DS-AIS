//
//  TreeNode.swift
//  
//
//  Created by Mitya Kim on 10/13/24.
//

public class TreeNode<T> {
    
    public var value: T
    public var children: [TreeNode] = []
    
    public init(_ value: T) {
        self.value = value
    }
    
    public func add(_ child: TreeNode) {
        children.append(child)
    }
}

public func example(of description: String, action: () -> ()) {
    print("--- Example of: \(description) ---")
    action()
    print()
}


extension TreeNode {
    public func forEachDepthFirst(visit: (TreeNode) -> ()) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit: visit)
        }
    }
}
