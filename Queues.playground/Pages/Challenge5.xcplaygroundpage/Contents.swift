

enum Direction {
    case front
    case back
}


protocol Deque {
    
    associatedtype Element
    var isEmpty: Bool { get }
    func peek(from direction: Direction) -> Element?
    mutating func enqueue(_ element: Element, to direction: Direction) -> Bool
    mutating func dequeue(from direction: Direction) -> Element?
}

class DequeDoubleLinkedList<Element>: Deque {
    
    private var list = DoublyLinkedList<Element>()
    public init() {}
    
    var isEmpty: Bool {
        list.isEmpty
    }
    
    func peek(from direction: Direction) -> Element? {
        switch direction {
        case .front:
            return list.first?.value
        case .back:
            return list.last?.value
        }
    }
    
    func enqueue(_ element: Element, to direction: Direction) -> Bool {
        switch direction {
        case .front:
            list.prepend(element)
        case .back:
            list.append(element)
        }
        return true
    }
    
    func dequeue(from direction: Direction) -> Element? {
        let element: Element?
        switch direction {
        case .front:
            guard let first = list.first else { return nil }
            element = list.remove(first)
        case .back:
            guard let last = list.last else { return nil }
            element = list.remove(last)
        }
        return element
    }
}


extension DequeDoubleLinkedList: CustomStringConvertible {
    public var description: String {
        String(describing: list)
    }
}

let deque = DequeDoubleLinkedList<Int>()
deque.enqueue(1, to: .back)
deque.enqueue(2, to: .back)
deque.enqueue(3, to: .back)
deque.enqueue(4, to: .back)
deque.enqueue(5, to: .back)

print(deque)

deque.enqueue(6, to: .front)

print(deque)

deque.dequeue(from: .back)
deque.dequeue(from: .back)
deque.dequeue(from: .back)
deque.dequeue(from: .front)
//deque.dequeue(from: .front)
//deque.dequeue(from: .front)

print(deque)

