
public protocol BoardGameManager {
    associatedtype Player
    mutating func nextPlayer() -> Player?
}


extension QueueArray: BoardGameManager {
    public typealias Player = T
    
    public mutating func nextPlayer() -> T? {
        guard let person = dequeue() else { return nil }
        enqueue(person)
        return person
    }
}

var queue = QueueArray<String>()
queue.enqueue("Kolya")
queue.enqueue("Evgen")
queue.enqueue("Sanya")
queue.enqueue("Igor")
queue.enqueue("Pete")
print(queue)

print("===== boardgame =====")
queue.nextPlayer()
print(queue)
queue.nextPlayer()
print(queue)
queue.nextPlayer()
print(queue)
