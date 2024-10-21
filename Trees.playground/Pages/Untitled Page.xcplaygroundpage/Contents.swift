

example(of: "creating a tree") {
    let beverages = TreeNode("beverages")
    let hot = TreeNode("hot")
    let cold = TreeNode("cold")
    
    beverages.add(hot)
    beverages.add(cold)
}

func makeBeverageTree() -> TreeNode<String> {
    let tree = TreeNode("beverage")
    
    let hot = TreeNode("hot")
    let cold = TreeNode("cold")
    
    let tea = TreeNode("tea")
    let coffee = TreeNode("coffee")
    let chocolate = TreeNode("chocolate")
    
    let blackTea = TreeNode("black")
    let greenTea = TreeNode("green")
    let chaiTea = TreeNode("chai")
    
    let soda = TreeNode("soda")
    let milk = TreeNode("milk")
    
    let gingerAle = TreeNode("ginger")
    let bitterLemon = TreeNode("lemon")
    
    tree.add(hot)
    tree.add(cold)
    
    hot.add(tea)
    hot.add(coffee)
    hot.add(chocolate)
    
    cold.add(soda)
    cold.add(milk)
    
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chaiTea)
    
    soda.add(gingerAle)
    soda.add(bitterLemon)
    
    return tree
}

example(of: "depth-first traversal") {
    let tree = makeBeverageTree()
    tree.forEachDepthFirst { print($0.value) }
}

example(of: "level order traversal") {
    let tree = makeBeverageTree()
    tree.forEachLevelOrder { print($0.value) }
}

example(of: "serching for a node") {
    let tree = makeBeverageTree()
    
    if let seachResult1 = tree.search("ginger") {
        print("found node: \(seachResult1.value)")
    }
    
    if let searchResult2 = tree.search("blue") {
        print(searchResult2)
    } else {
        print("Couldn't find blue")
    }
}


