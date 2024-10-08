//
//  Untitled.swift
//  
//
//  Created by Mitya Kim on 10/7/24.
//

public protocol Queue {

    associatedtype Element
    
    mutating func enqueue(_ element: Element) -> Bool
    
    mutating func dequeue() -> Element?
    
    var isEmpty: Bool { get }
    
    var peek: Element? { get }
}
